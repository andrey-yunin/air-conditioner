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

void task_system_control_code(void)
{

    init_period_time(30);
	task_periodic_start_union test;
	printf("system_control start...\n");
	//alt_u32 state;

	enum air_conitioner_state {
		temperature_balance,
		heating,
		cooling
	};
	//state = temperature_balance;

	while(1)
	{
	test = wait_for_next_period();
	if ((test.periodic_start_integer & 0x1) != 0)
	printf ("deadline miss, system_monitoring\n");

	switch (state)
	{
	case temperature_balance:
		stop_machines(0, machines_off);
		if (temperature_medium < temperature_set)
			state = heating;
		else
			if (temperature_medium > temperature_set)
			state = cooling;
			else
				state = temperature_balance;
				break;
	case heating:
		start_machine_heating(0, machine_heating_on);
		if (temperature_medium == temperature_set)
			state = temperature_balance;
		else
			if (temperature_medium > temperature_set)
			state = cooling;
			else
				state = heating;
				break;
	case cooling:
		start_machine_cooling(0, machine_cooling_on);
		if (temperature_medium == temperature_set)
			state = temperature_balance;
			else
				if (temperature_medium < temperature_set)
				state = heating;
				else
					state = cooling;
					break;
	}
	}
	return;
}



