/*
 *
 * Contains the timers for the Bosshog robot
 */

/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/



#include "BosshogTimers.h"





//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


//Priority for different timers
static uint8_t MyPriority1; // TIMER 1 PRIORITY 
static uint8_t MyPriority2; // TIMER JIG PRIORITY




//~~~~ INIT FUNCTIONS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

uint8_t Init_timer_5_sec(uint8_t Priority)
{
    ES_Event TIMER;

    MyPriority1 = Priority;


    // post the initial transition event
    ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS); 
    TIMER.EventType = ES_INIT;
    if (ES_PostToService(MyPriority1, TIMER) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}
uint8_t Init_jig_timer(uint8_t Priority)
{
    ES_Event TIMER;

    MyPriority2 = Priority;


    // post the initial transition event
    ES_Timer_InitTimer(Timer_For_Jig, TIMER_JIG_TICKS); 
    TIMER.EventType = ES_INIT;
    if (ES_PostToService(MyPriority2, TIMER) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



//~~~~ RUN TIMER FUNCTIONS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ES_Event Run_timer_5_sec(ES_Event this_timer_five_sec)
{
    ES_Event timer5;
    timer5.EventType = ES_NO_EVENT; // assume no errors


    switch (this_timer_five_sec.EventType) {
    case ES_INIT:
        break;
    case ES_TIMERACTIVE: 
    case ES_TIMERSTOPPED: 
        break; 

    case ES_TIMEOUT:
        
        //ES_Timer_InitTimer(TURN_LEFT_TIMER, TIMER_1_TICKS); 

        timer5.EventType = FIVE_SEC_TIMER;
        printf("5 sec timer over \r\n");
        PostBosshogHSM(timer5);

        break;
        
    }

    
    return timer5;
}



ES_Event Run_jig_timer(ES_Event this_timer)
{
    ES_Event timer5;
    timer5.EventType = ES_NO_EVENT; // assume no errors


    switch (this_timer.EventType) {
    case ES_INIT:
        break;
    case ES_TIMERACTIVE: 
    case ES_TIMERSTOPPED: 
        break; 

    case ES_TIMEOUT:
        
        //ES_Timer_InitTimer(TURN_LEFT_TIMER, TIMER_1_TICKS); 

        timer5.EventType = JIGGY_TIME;
        printf("JIG TIME \r\n");
        PostBosshogHSM(timer5);

        break;
        
    }

    
    return timer5;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



//~~~ Post Timer Functions~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
uint8_t Post_timer_5_sec(ES_Event timer5)
{
    return ES_PostToService(MyPriority1, timer5);
}

uint8_t Post_jig_timer(ES_Event this_timer)
{
    return ES_PostToService(MyPriority2, this_timer);
}