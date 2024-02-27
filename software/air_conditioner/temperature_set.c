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
#include "average_value_driver.h"

void task_temperature_set_code(void)
  {
	init_period_time(50);
	task_periodic_start_union test;
	printf("temperature_set start...\n");

	while(1)
	  	{
		test = wait_for_next_period();
	  	if ((test.periodic_start_integer & 0x1) != 0)
	    printf ("deadline miss, temperature_set_code\n");

	    temperature_set = read_temperature_set(0);

	  	//printf("temperature_set: %d\n", temperature_set);

	  	}
	return;

  }

