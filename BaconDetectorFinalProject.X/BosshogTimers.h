/*************************
 * 
 * This file contains all the timers used for 
 * the bosshog robot.
 * 
 * 
**************************/


#ifndef BOSSHOGTIMERS_H
#define	BOSSHOGTIMERS_H

/*******************************************************************************
 * PUBLIC #INCLUDES                                                            *
 ******************************************************************************/

#include "ES_Configure.h"   // defines ES_Event, INIT_EVENT, ENTRY_EVENT, and EXIT_EVENT
#include "ES_Events.h"
#include "BOARD.h"

#include <stdio.h>
#include "ES_Framework.h"


//~~~~ TIMER TICK DEFINITONS WHERE EACH IS IN ms~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#define TIMER_1_TICKS 5000 
#define TIMER_JIG_TICKS 1000 
#define TIMER_180_SPIN_TICKS 3500 

/*******************************************************************************
 * PUBLIC FUNCTION PROTOTYPES                                                  *
 ******************************************************************************/
uint8_t Init_timer_5_sec(uint8_t Priority);
uint8_t Init_jig_timer(uint8_t Priority);
uint8_t Init_180_timer(uint8_t Priority);


uint8_t Post_timer_5_sec(ES_Event ThisEvent);
uint8_t Post_jig_timer(ES_Event ThisEvent);
uint8_t Post_180_timer(ES_Event ThisEvent);


ES_Event Run_timer_5_sec(ES_Event ThisEvent);
ES_Event Run_jig_timer(ES_Event ThisEvent);
ES_Event Run_180_timer(ES_Event ThisEvent);

#endif	

