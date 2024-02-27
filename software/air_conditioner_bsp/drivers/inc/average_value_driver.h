#ifndef AVERAGE_VALUE_H_INCLUDED
#define SAVERAGE_VALUE_H_INCLUDED

#include "average_value_csr.h"

//----------------------------------- temperature average component--------------------------------------------------------

//read-write component memory macros

#define component_memory_read(offset)                  IORD_32DIRECT(VALUE_0_AVERAGE_VALUE_INTERNAL_INST_AVS_A_BASE, offset)
#define component_memory_write(offset, data)           IOWR_32DIRECT(VALUE_0_AVERAGE_VALUE_INTERNAL_INST_AVS_A_BASE, offset, data)

//read - write component macros
#define component_read(offset)                         IORD_32DIRECT(VALUE_0_AVERAGE_VALUE_INTERNAL_INST_AVS_CRA_BASE, offset)
#define component_write(offset, data)                  IOWR_32DIRECT(VALUE_0_AVERAGE_VALUE_INTERNAL_INST_AVS_CRA_BASE, offset, data)



// Component register macros
#define average_arg_N(data)                             component_write (AVERAGE_VALUE_CSR_ARG_N_REG, AVERAGE_VALUE_CSR_ARG_N_MASK & data)
#define average_returndata()                            component_read  (AVERAGE_VALUE_CSR_RETURNDATA_REG)& AVERAGE_VALUE_CSR_RETURNDATA_MASK
#define average_enable_interrupt()                      component_write (AVERAGE_VALUE_CSR_INTERRUPT_ENABLE_REG, AVERAGE_VALUE_CSR_INTERRUPT_ENABLE_MASK & 0x1)
#define average_disable_interrupt()                     component_write (AVERAGE_VALUE_CSR_INTERRUPT_ENABLE_REG, AVERAGE_VALUE_CSR_INTERRUPT_ENABLE_MASK & 0x0)
#define average_clear_done_status()                     component_write (AVERAGE_VALUE_CSR_INTERRUPT_STATUS_REG, AVERAGE_VALUE_CSR_INTERRUPT_STATUS_MASK & 0x1)
#define average_start()                                 component_write (AVERAGE_VALUE_CSR_START_REG, AVERAGE_VALUE_CSR_START_MASK & 0x1)
#define average_busy()                                  component_read  (AVERAGE_VALUE_CSR_BUSY_REG) & AVERAGE_VALUE_CSR_BUSY_MASK
#define average_done()                                  component_read  (AVERAGE_VALUE_CSR_INTERRUPT_STATUS_REG) & AVERAGE_VALUE_CSR_INTERRUPT_STATUS_MASK

// ---------------------------------------Arduino PIO-----------------------------------------------------------------------------

#define machine_cooling_on 0x8
#define machine_heating_on 0x4
#define machines_off       0x0

#define start_machine_cooling(offset, data)             IOWR_32DIRECT (PIO_0_BASE, offset, data)
#define start_machine_heating(offset, data)             IOWR_32DIRECT (PIO_0_BASE, offset, data)
#define stop_machines(offset, data)                     IOWR_32DIRECT (PIO_0_BASE, offset, data)

// ---------------------------------------Temperature set--------------------------------------------------------------------------

#define read_temperature_set(offset)                    IORD_32DIRECT(TEMPERATURE_SET_IP_0_BASE, offset)

#endif
