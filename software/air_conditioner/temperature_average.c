

#include "average_value_csr.h"
#include "average_value_driver.h"

#include <altera_modular_adc.h>
#include "altera_avalon_sierra_ker.h"
#include <altera_avalon_sierra_io.h>
#include <altera_avalon_sierra_regs.h>
#include <altera_avalon_sierra_name.h>

#include "altera_avalon_pio_regs.h"

#include "system.h" // for use of SOPC base-address definitons
#include "stdio.h"
#include <stdlib.h>
#include "io.h"
#include "sys/alt_irq.h"
#include <DE10_Lite_VGA_Driver.h>
#include <alt_types.h>
#include "globals.h"
#include "tasks.h"

void task_temperature_average_code(void)
{

    init_period_time(50);
	task_periodic_start_union test;
	printf("temperature_avarege start...\n");

    float average_result;


    average_disable_interrupt();
    average_clear_done_status();


  while(1)
  {

	  test = wait_for_next_period();
	  if ((test.periodic_start_integer & 0x1) != 0)
	  printf ("deadline miss, temperature_average_code\n");



  //load massive to component memory
  for (int k=0;k<64;k++){
	  component_memory_write((k*sizeof(alt_32)), *(alt_32 *) (&buffer_temperature[k]));
  }

   		   // Call sample buffer
   while (average_busy()){}
   average_start();
   while(!(average_done())){}
   average_arg_N(64);

   *(alt_32*) (&average_result) = average_returndata();

   temperature_medium = average_result;

  }
  return ;
}
