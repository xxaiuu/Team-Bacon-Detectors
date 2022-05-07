/*
 * File: TemplateFSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel H Elkaim
 *
 * Template file to set up a Flat State Machine to work with the Events and Services
 * Frameword (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that this file
 * will need to be modified to fit your exact needs, and most of the names will have
 * to be changed to match your code.
 *
 * This is provided as an example and a good place to start.
 *
 *Generally you will just be modifying the statenames and the run function
 *However make sure you do a find and replace to convert every instance of
 *  "Template" to your current state machine's name
 * History
 * When           Who     What/Why
 * -------------- ---     --------
 * 09/13/13 15:17 ghe      added tattletail functionality and recursive calls
 * 01/15/12 11:12 jec      revisions for Gen2 framework
 * 11/07/11 11:26 jec      made the queue static
 * 10/30/11 17:59 jec      fixed references to CurrentEvent in RunTemplateSM()
 * 10/23/11 18:20 jec      began conversion from SMTemplate.c (02/20/07 rev)
 */


/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "ES_Framework.h"

#include "PingFSM.h"
#include <BOARD.h>
//Uncomment these for the Roaches
//#include "roach.h"
//#include "RoachFrameworkEvents.h"
#include <stdio.h>
#include <stdint.h>
//#include "IO_Ports.h"


/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/


/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine.*/


/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/

/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

typedef enum {
    InitPState,
    PING,
    LISTEN,
} PingFSMState_t;

static const char *StateNames[] = {
	"InitPState",
	"PING",
    "LISTEN"
};


static PingFSMState_t CurrentState = InitPState; // <- change enum name to match ENUM
static uint8_t MyPriority;
static uint32_t startInputTime; 
static uint32_t flightTime; 


/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTemplateFSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PingFSMInit(uint8_t Priority)
{
    ES_Timer_Init();
    MyPriority = Priority;
    // put us into the Initial PseudoState
    CurrentState = InitPState;
    // post the initial transition event
    if (ES_PostToService(MyPriority, INIT_EVENT) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/**
 * @Function PostTemplateFSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Remember to rename to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PingFSMPost(ES_Event ThisEvent)
{
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function RunTemplateFSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the flat state machine,
 *        as this is called any time a new event is passed to the event queue. This
 *        function will be called recursively to implement the correct order for a
 *        state transition to be: exit current state -> enter next state using the
 *        ES_EXIT and ES_ENTRY events.
 * @note Remember to rename to something appropriate.
 *       Returns ES_NO_EVENT if the event have been "consumed."
 * @author J. Edward Carryer, 2011.10.23 19:25 */
ES_Event PingFSMRun(ES_Event ThisEvent)
{
    uint8_t makeTransition = FALSE; // use to flag transition
    PingFSMState_t nextState; // <- need to change enum type here

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
    case InitPState: // If current state is initial Psedudo State
        if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
        {
            // this is where you would put any actions associated with the
            // transition from the initial pseudo-state into the actual
            // initial state
            
            //init the IO pins
            //configure trigger output to pin Y03
            PORTY03_TRIS = 0; //set as output
            PORTY03_LAT = 0; //set initially as low
            
            //configure echo input pin as Y04
            PORTY04_TRIS = 1; //set as input
            InputChangeEventInit();
            //start PingTimer
            ES_Timer_InitTimer(PING_TRIGGER_TIMER, 1);
            // now put the machine into the actual initial state
            nextState = PING;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case PING: // in the first state, replace this with appropriate state
        PING_TRIGGER_PIN = 1; //set trigger high
        if (ThisEvent.EventType == ES_TIMEOUT)// only respond to ES_Init
        {
            PING_TRIGGER_PIN = 0; //set low 

            // now put the machine into the actual initial state
            nextState = LISTEN;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;
        
    case LISTEN:
        if (ThisEvent.EventType == ECHO_INPUT_CHANGE)// only respond to ES_Init
        {
            if(PING_ECHO_PIN){
                //pin went high want time stamp
                startInputTime = ES_Timer_GetTime();
            }
            if (!PING_ECHO_PIN && startInputTime){
                //pin went low want to calc flighttime
                flightTime = ES_Timer_GetTime() - startInputTime;
                printf("distance: %d\n", (flightTime * 1000)/148);
                //start PING TIMER AND TRIGGER
                PING_TRIGGER_PIN = 1;
                ES_Timer_InitTimer(PING_TRIGGER_TIMER, 1);
                nextState = PING;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
        }
        break;

    default: // all unhandled states fall into here
        break;
    } // end switch on Current State
    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        PingFSMRun(EXIT_EVENT);
        CurrentState = nextState;
        PingFSMRun(ENTRY_EVENT);
    }
    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/
