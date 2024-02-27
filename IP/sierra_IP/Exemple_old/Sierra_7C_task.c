/*!----------------------------------------------------------------------
      Sierra Real-Time Kernel exampel code for NiosII

  Filename      :  sierra_7C_Task.c

  Company       :  AGSTU AB (www.agstu.com)
  Date Created  :  2010
  Description   :  System with one periodic tasks.
  System
  Components    :  Sierra, real-time kernel HW and SW.
  Note          :  Simple example created with the following configurations:
                   - NIOSII/e (economy) or NiosII/s (standard) @ 50 MHz
                   - Quartus 10, 9.1, Nios IDE 10, 9.1
		   - Microsoft 7, XP
                   If you have a small memory:
                   - Reduced Device Drivers (System Library Properties)
                   - Small C Library (System Library Properties)

-----------------------------------------------------
  Task Description:
  System:
- Ideal write ".", as in the last example
- Timer_task: Same as the timer_task in the last example.
- Timer_task_10: every 10 secound a "A".
- Timer_task_0_5: print every half second a "b" and all the others results.
- Configuration file

-------------------------------------------------------

COPYRIGHT (C) 2010, 2009 AGSTU AB
All rights reserved. AGSTU's source code is an unpublished work, and the use of a copyright notice does not imply otherwise. This source code contains confidential, trade-secret material of AGSTU AB. Any attempt at or participation in deciphering, decoding, reverse engineering, or in any way altering the source code is strictly prohibited unless the prior written consent of AGSTU AB is obtained.
Disclaimer
All code in this file are provided "as is" and without any warranties expressed or implied, including but not limited to implied warranties of merchantability and fitness for a particular purpose. In no event should the author be liable for any damages whatsoever (including without limitation, damages for loss of business profits, business interruption, loss of business information, or any other pecuniary loss) arising out of the use or inability to use information (including software, designs and files) provided on this site.

-----------------------------------------------------------------------*/

/* Sierra Driver Includes, hardware base adresses and also C libary */
#include "altera_avalon_sierra_ker.h"
#include <altera_avalon_sierra_io.h>
#include <altera_avalon_sierra_regs.h>
#include <altera_avalon_sierra_name.h>
#include "system.h" // for use of SOPC base-address definitons
#include "stdio.h"
#include "io.h"

// TASK, in Sierra
#define IDLE 0
#define Timer_Task 1
#define Timer_Task_10 2
#define Timer_Task_0_5 3

// TASK STACKS
#define STACK_SIZE 800
char idle_stack[STACK_SIZE];
char timer_task_stack[STACK_SIZE];
char timer_task_10_stack[STACK_SIZE];
char timer_task_0_5_stack[STACK_SIZE];

//Global
volatile int global_time_sec = 0, global_time_10_sec = 0, global_temp = 0;

//-----------------------------------------------------
void timer_task_code(void)
{
    int i=0;
    printf("Timer Task init\n ");
    init_period_time(50); // one second

    while(1)
    {
      wait_for_next_period(); //Every second
      for(i=0; i<50000; i++);  //virtual load
      global_temp = global_temp +1;
      global_time_sec = 1;
    }
}

//-----------------------------------------------------
void timer_task_10_code(void)
{
    int i=0;
    printf("Timer Task 10 init\n ");
    init_period_time(500); // every 10 second

    while(1)
    {
      wait_for_next_period(); //Every 10 second
      for(i=0; i<50000; i++);  //virtual load
      global_time_10_sec = 1;
    }
}

//-----------------------------------------------------
void timer_task_0_5_code(void)
{
    int i=0;
    printf("Timer Task 0,5 init\n ");
    init_period_time(25); // half second

    while(1)
    {
      wait_for_next_period(); //Every half second
      for(i=0; i<5000; i++);  //virtual load
      printf("b");
     if (global_time_10_sec == 1) {global_time_10_sec = 0; printf("A");}
     if (global_time_sec == 1) {global_time_sec = 0; printf("\nSec: %d ", global_temp);}

    }
}
//-----------------------------------------------------

void idle_task_code(void){
    /* Never blocked. Idle shall only be in running or ready state, lowest priority and taskid 0 */
    int i=0;
    printf("Ideal starts\n ");
  while(1) // Loop forever!
   {
   for(i=0; i<500000; i++);  //slow down the counter
   printf(".");

  }
}

/*!-----------------------------------------------------
    Main
-------------------------------------------------------*/

int main (void)
{
  Sierra_Initiation_HW_and_SW();
  // Get HW Version
  printf("  Sierra HW version = %d\n", sierra_HW_version());
  printf("  Sierra SW driver version = %d\n", sierra_SW_driver_version());

  /*********************************************************************
   * Initialize time base register.
   * This example     : 50 MHz system-clock
   * Wanted tick time : 20 ms (50Hz)
   * Formula gives    : 20 ms x 50 MHx / 1000 => 1000(dec)
   * ******************************************************************/
   set_timebase(1000);

/* task_create()  */
task_create(IDLE, 7, READY_TASK_STATE, idle_task_code, idle_stack, STACK_SIZE);
task_create(Timer_Task, 1, READY_TASK_STATE, timer_task_code, timer_task_stack, STACK_SIZE);
task_create(Timer_Task_10, 2, READY_TASK_STATE, timer_task_10_code, timer_task_10_stack, STACK_SIZE);
task_create(Timer_Task_0_5, 0, READY_TASK_STATE, timer_task_0_5_code, timer_task_0_5_stack, STACK_SIZE);

// Start the Sierra scheduler
  tsw_on(); // enable CPU irq from Sierran and now at least idle will give a irq.

  while(1) {
    // Should never end up here...!
    printf ("* ERROR! SYSTEM FAILED *\n ");
  }
}
