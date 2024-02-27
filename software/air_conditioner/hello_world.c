/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */
#include <stdio.h>
#include <system.h>
#include <alt_types.h>
#include <DE10_Lite_VGA_Driver.h>
#include <altera_modular_adc.h>
#include "average_value_csr.h"
#include "average_value_driver.h"
#include <altera_avalon_pio_regs.h>
#include "altera_avalon_sierra_ker.h"
#include <altera_avalon_sierra_io.h>
#include <altera_avalon_sierra_regs.h>
#include <altera_avalon_sierra_name.h>
#include "globals.h"
#include "tasks.h"


#define task_IDLE 0
#define task_adc 2
#define task_temperature_set 1
#define task_temperature_average 3
#define task_system_control 4
#define task_system_monitoring 5

// TASK STACKS
 #define STACK_SIZE 800
 char task_IDLE_stack[STACK_SIZE];
 char task_adc_stack[STACK_SIZE];
 char task_temperature_set_stack[STACK_SIZE];
 char task_temperature_average_stack[STACK_SIZE];
 char task_system_control_stack[STACK_SIZE];
 char task_system_monitoring_stack[STACK_SIZE];


 void task_IDLE_code (void){

 	 while (1){
 		{
 		 	 for(int i=0; i<5000; i++); // You can do something ...
 		 	 printf ("...\n");
 		   }
 	   }
 }

int main()
  {
       printf("Hello!");
       Sierra_Initiation_HW_and_SW();
	   // Get HW Version
	   printf("  Sierra HW version = %d\n", sierra_HW_version());
	   printf("  Sierra SW driver version = %d\n", sierra_SW_driver_version());
	   clear_screen (0);

	   /*********************************************************************
	    * Initialize time base register.
	    * This example     : 50 MHz system-clock
	    * Wanted tick time : 20 ms (50Hz)
	    * Formula gives    : 20 ms x 50 MHx / 1000 => 1000(dec)
	    * ******************************************************************/
	   set_timebase(1000);

		 /* task_create()  */

	   task_create(task_adc, 2, READY_TASK_STATE, task_adc_code, task_adc_stack, STACK_SIZE);
	   task_create(task_IDLE, 0, READY_TASK_STATE, task_IDLE_code, task_IDLE_stack, STACK_SIZE);
	   task_create(task_temperature_set, 1, READY_TASK_STATE, task_temperature_set_code, task_temperature_set_stack, STACK_SIZE);
	   task_create(task_temperature_average, 3, READY_TASK_STATE, task_temperature_average_code, task_temperature_average_stack, STACK_SIZE);
	   task_create(task_system_control, 4, READY_TASK_STATE, task_system_control_code, task_system_control_stack, STACK_SIZE);
	   task_create(task_system_monitoring, 5, READY_TASK_STATE, task_system_monitoring_code, task_system_monitoring_stack, STACK_SIZE);

	   tsw_on(); // enable CPU irq from Sierran and now at least idle will give a irq.

	   while(1) {
	       		    // Should never end up here...!
	       		    printf ("* ERROR! SYSTEM FAILED *\n ");
	       		  }
  return 0;
  }


