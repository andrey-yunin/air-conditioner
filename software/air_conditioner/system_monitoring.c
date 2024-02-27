

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

#define temperature_balance tty_print(200, 100, "balance", 7,0)
#define heating tty_print(200, 100, "heating", 7,0)
#define cooling tty_print(200, 100, "cooling", 7,0)

void init_vga (void)
{
	tty_print(150, 10, "AGSTU", 1, 0);
	tty_print(80, 20, "AIR CONDITIONER PROTOTYPE", 2, 0);
	tty_print(90, 30, "CREATED BY ANDREY YUNIN", 3, 0);
}

void temperature_set_vga(void)
{
	tty_print(50, 60, "Temperature set", 1, 0);
	int_print(200, 60, temperature_set, 2,0,2);
}

void temperature_medium_vga(void)
{
    tty_print(50, 70, "Temperature medium", 1, 0);
    int_print(200, 70, temperature_medium, 2,0,2);
 }

void system_status_vga(void)
{
	tty_print(50, 100, "System status:", 1, 0);
	if (state == 0)
		temperature_balance;
	else
	if (state == 1)
		heating;
	else
	if (state == 2)
	    cooling;
}

void clear_screen_black(void)
{
	alt_u32 x,y;
	for ( y = 100; y<110; ++y )
	{
		for (x = 200; x < 250; ++x)
		{
			write_pixel(x,y,0);
		}
	}
}

void task_system_monitoring_code(void)
{

    init_period_time(30);
	task_periodic_start_union test;
	printf("system_monitoring start...\n");
    
    while(1)
         
  {

	  test = wait_for_next_period();
	  if ((test.periodic_start_integer & 0x1) != 0)
	  printf ("deadline miss, system_monitoring\n");
  
      init_vga();
      temperature_set_vga();
      temperature_medium_vga();
      clear_screen_black();
      system_status_vga();
      
     }
  return ;
}
  
  
  
