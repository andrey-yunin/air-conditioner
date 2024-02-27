#include <altera_modular_adc.h>
#include "altera_avalon_sierra_ker.h"
#include <altera_avalon_sierra_io.h>
#include <altera_avalon_sierra_regs.h>
#include <altera_avalon_sierra_name.h>
#include "system.h" // for use of SOPC base-address definitons
#include "stdio.h"
#include <stdlib.h>
#include "io.h"
#include "sys/alt_irq.h"
#include <DE10_Lite_VGA_Driver.h>
#include <alt_types.h>
#include "globals.h"
#include "tasks.h"

#define ANALOG_VOLTAGE_REFERENCE 2.5f


void task_adc_code(void)
  {
	init_period_time(15);
	task_periodic_start_union test;
	printf("adc task start...\n");
	int k=0;
	alt_u32 reading;
	float save_temperature[64];

	adc_interrupt_disable(MODULAR_ADC_0_SAMPLE_STORE_CSR_BASE); 									// Disable IRQ
	adc_stop(MODULAR_ADC_0_SEQUENCER_CSR_BASE);														// Stop the ADC before calling adc_set_mode_run_continuously
	adc_set_mode_run_continuously(MODULAR_ADC_0_SEQUENCER_CSR_BASE);								// Set adc to run continuously
	adc_start(MODULAR_ADC_0_SEQUENCER_CSR_BASE);										            // Start ADC again


  	while(1)
  	{
  		test = wait_for_next_period();

  	    if ((test.periodic_start_integer & 0x1) != 0)
  		printf ("deadline miss, adc_code\n");

// get temperature samples from ADC
        for (k = 0; k<64; k++){
  		alt_adc_word_read(MODULAR_ADC_0_SAMPLE_STORE_CSR_BASE , &reading, 1);
  		alt_u32 pin_a0 = reading;
  		float voltage = ((pin_a0<<1) * ANALOG_VOLTAGE_REFERENCE) / 4096.0f;
  	    float temperature_c = (voltage - 0.5f) * 100.0f;

// write temperature samples to temperature buffer

        save_temperature[k] = temperature_c;
        buffer_temperature[k] = save_temperature[k];
        }
   	}
  return;
  }



