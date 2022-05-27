/*
 *
 * Contains the timers for the Bosshog robot
 */

/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/



#include "BosshogTimers.h"
#include "bosshog.h"





//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


//Priority for different timers
static uint8_t MyPriority1; // TIMER 1 PRIORITY 
static uint8_t MyPriority2; // TIMER JIG PRIORITY
static uint8_t MyPriority3; // TIMER 180 SPIN PRIORITY
static uint8_t MyPriority4; // TIMER LOST PRIORITY
static uint8_t MyPriority5; // TIMER ALIGN PRIORITY




//~~~~ INIT FUNCTIONS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

uint8_t Init_timer_5_sec(uint8_t Priority)
{
    ES_Event TIMER;

    MyPriority1 = Priority;


    // post the initial transition event
    //ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS); 
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
    //ES_Timer_InitTimer(Timer_For_Jig, TIMER_JIG_TICKS); 
    TIMER.EventType = ES_INIT;
    if (ES_PostToService(MyPriority2, TIMER) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

uint8_t Init_180_timer(uint8_t Priority)
{
    ES_Event TIMER;

    MyPriority3 = Priority;


    // post the initial transition event
    //ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS); 
    TIMER.EventType = ES_INIT;
    if (ES_PostToService(MyPriority3, TIMER) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

uint8_t Init_Lost_timer(uint8_t Priority)
{
    ES_Event TIMER;

    MyPriority4 = Priority;


    // post the initial transition event
    //ES_Timer_InitTimer(Timer_For_Lost, TIMER_LOST_TICKS); 
    TIMER.EventType = ES_INIT;
    if (ES_PostToService(MyPriority4, TIMER) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

uint8_t Init_Align_timer(uint8_t Priority)
{
    ES_Event TIMER;

    MyPriority5 = Priority;


    // post the initial transition event
    //ES_Timer_InitTimer(Timer_For_Align, TIMER_ALIGN_TICKS); 
    TIMER.EventType = ES_INIT;
    if (ES_PostToService(MyPriority5, TIMER) == TRUE) {
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
        //printf("5 sec timer over \r\n");
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
        //printf("JIG TIME \r\n");
        PostBosshogHSM(timer5);

        break;
        
    }

    
    return timer5;
}


ES_Event Run_180_timer(ES_Event this_timer)
{
    ES_Event timer;
    timer.EventType = ES_NO_EVENT; // assume no errors


    switch (this_timer.EventType) {
    case ES_INIT:
        break;
    case ES_TIMERACTIVE: 
    case ES_TIMERSTOPPED: 
        break; 

    case ES_TIMEOUT:
        //ES_Timer_InitTimer(TURN_LEFT_TIMER, TIMER_1_TICKS); 

        timer.EventType = SPIN_AROUND;
        Bosshog_RightMtrSpeed(0);
        Bosshog_LeftMtrSpeed(0);
        //printf("180 Spin \r\n");
        PostBosshogHSM(timer);

        break;
        
    }

    
    return timer;
}

ES_Event Run_Lost_timer(ES_Event this_timer)
{
    ES_Event timer;
    timer.EventType = ES_NO_EVENT; // assume no errors


    switch (this_timer.EventType) {
    case ES_INIT:
        break;
    case ES_TIMERACTIVE: 
    case ES_TIMERSTOPPED: 
        break; 

    case ES_TIMEOUT:
        //ES_Timer_InitTimer(TURN_LEFT_TIMER, TIMER_1_TICKS); 

        timer.EventType = HI_IM_LOST;
        //printf("180 Spin \r\n");
        PostBosshogHSM(timer);

        break;
        
    }

    
    return timer;
}


ES_Event Run_Align_timer(ES_Event this_timer)
{
    ES_Event timer;
    timer.EventType = ES_NO_EVENT; // assume no errors


    switch (this_timer.EventType) {
    case ES_INIT:
        break;
    case ES_TIMERACTIVE: 
    case ES_TIMERSTOPPED: 
        break; 

    case ES_TIMEOUT:
        //ES_Timer_InitTimer(TURN_LEFT_TIMER, TIMER_1_TICKS); 

        timer.EventType = ALIGNING_TIMER;

        PostBosshogHSM(timer);

        break;
        
    }

    
    return timer;
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

uint8_t Post_180_timer(ES_Event this_timer)
{
    return ES_PostToService(MyPriority3, this_timer);
}

uint8_t Post_Lost_timer(ES_Event this_timer)
{
    return ES_PostToService(MyPriority4, this_timer);
}

uint8_t Post_Align_timer(ES_Event this_timer)
{
    return ES_PostToService(MyPriority5, this_timer);
}