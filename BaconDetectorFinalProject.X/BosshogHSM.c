/*
 * File: TemplateSubHSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel Elkaim and Soja-Marie Morgens
 *
 * Template file to set up a Heirarchical State Machine to work with the Events and
 * Services Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the names
 * will have to be changed to match your code.
 *
 * There is another template file for the SubHSM's that is slightly differet, and
 * should be used for all of the subordinate state machines (flat or heirarchical)
 *
 * This is provided as an example and a good place to start.
 *
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
#include "BOARD.h"
#include "BosshogHSM.h"
#include "BosshogSubHSM.h" //#include all sub state machines called
#include "bosshog.h"
#include <stdio.h>
/*******************************************************************************
 * PRIVATE #DEFINES                                                            *
 ******************************************************************************/
//Include any defines you need to do
//#define motorspeed 75

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/


typedef enum {
    Init,
    Sweep,
    Relocate,
    Navigate,
    Identify,
    Deposit,
    FindNext,
    FindNextInverse,
    CantFind,
    TopStop,
} BosshogHSMState_t;

static const char *StateNames[] = {
    "Init",
    "Sweep",
    "Relocate",
    "Navigate",
    "Identify",
    "Deposit",
    "FindNext",
    "FindNextInverse",
    "CantFind",
    "TopStop",
};


/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine
   Example: char RunAway(uint_8 seconds);*/
/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static BosshogHSMState_t CurrentState = Init; // <- change enum name to match ENUM
static uint8_t MyPriority;


/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTemplateHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitBosshogHSM(uint8_t Priority) {
    MyPriority = Priority;
    // put us into the Initial PseudoState
    CurrentState = Init;
    // post the initial transition event
    if (ES_PostToService(MyPriority, INIT_EVENT) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/**
 * @Function PostTemplateHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Remember to rename to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PostBosshogHSM(ES_Event ThisEvent) {
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function RunTemplateHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the heirarchical state
 *        machine, as this is called any time a new event is passed to the event
 *        queue. This function will be called recursively to implement the correct
 *        order for a state transition to be: exit current state -> enter next state
 *        using the ES_EXIT and ES_ENTRY events.
 * @note Remember to rename to something appropriate.
 *       The lower level state machines are run first, to see if the event is dealt
 *       with there rather than at the current level. ES_EXIT and ES_ENTRY events are
 *       not consumed as these need to pass pack to the higher level state machine.
 * @author J. Edward Carryer, 2011.10.23 19:25
 * @author Gabriel H Elkaim, 2011.10.23 19:25 */
ES_Event RunBosshogHSM(ES_Event ThisEvent) {
    uint8_t makeTransition = FALSE; // use to flag transition
    BosshogHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {

        case Init: // If current state is initial Pseudo State
            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
            {
                // this is where you would put any actions associated with the
                // transition from the initial pseudo-state into the actual
                // initial state
                // Initialize all sub-state machines
                //                Init_Relocate_SubHSM();
                //                Init_Navigate_SubHSM();
                //                Init_Identify_SubHSM();
                //                Init_Deposit_SubHSM();
                //                Init_FindNext_SubHSM();
                //                Init_FindNextInverse_SubHSM();
                // now put the machine into the actual initial state
                nextState = Sweep;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
                ;
            }
            break;

        case TopStop:
            Bosshog_LeftMtrSpeed(0);
            Bosshog_RightMtrSpeed(0);
            break;


            // Real Initial State of Top HSM
        case Sweep:
            // No Sub HSM in this State
            printf("Sweep \r\n");
            // Tank Turn Sweep Right
            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);


            //Transition 
            switch (ThisEvent.EventType) {
                case BEACON_DETECTED:
                    Init_Navigate_SubHSM();

                    nextState = Navigate;
                    makeTransition = TRUE;

                    Bosshog_LeftMtrSpeed(0);
                    Bosshog_RightMtrSpeed(0);
                    break;

                case FIVE_SEC_TIMER: // when the 5 second timer expires 
                    Init_Relocate_SubHSM();

                    nextState = Relocate;
                    makeTransition = TRUE;
                    ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS);

                    break;

                default:
                    break;
            }

            break;

        case Relocate:
            //NOTE: the SubState Machine runs and responds to events before anything in the this
            //state machine does
            printf("Relocate \r\n");

            //Run the appropriate Sub HSM 
            ThisEvent = Run_Relocate_SubHSM(ThisEvent);

            //Transitions
            switch (ThisEvent.EventType) {
                case FIVE_SEC_TIMER:
                    nextState = Sweep;
                    makeTransition = TRUE;
                    ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS);

                default:
                    break;
            }
            break;


        case Navigate:
            printf("Navigate \r\n");

            //printf("In Navigate state. Not Implemented Yet. \r\n");
            //has sub HSM
            ThisEvent = Run_Navigate_SubHSM(ThisEvent);

            //Transitions
            switch (ThisEvent.EventType) {
                    //If any of the front bumpers get press, move to the identify state
                    //and start a 5 second timer
                case FRB_PRESSED:
                    nextState = Identify;
                    makeTransition = TRUE;
                    //                //start 5 second timer
                    //                ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS); 
                    Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
                    Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
                    Init_Identify_SubHSM();

                    break;
                case FLB_PRESSED:
                    Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
                    Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
                    nextState = Identify;
                    makeTransition = TRUE;
                    //                //start 5 second timer
                    //                ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS); 
                    Init_Identify_SubHSM();

                    break;
                default:
                    break;
            }

            break;


        case Identify:
            printf("Identify \r\n");
            //has sub HSM
            //remember to initialize in previous state transition 
            //ES_Timer_InitTimer(Timer_For_Align, TIMER_ALIGN_TICKS);

            ThisEvent = Run_Identify_SubHSM(ThisEvent);

            //            if (BosshogReadCenterTape() == TAPE_BLACK && BosshogReadRightTape() == TAPE_BLACK){
            //                nextState = TopStop;
            //                makeTransition = TRUE;
            //            }


            //            //Transitions
            //            switch (ThisEvent.EventType) {
            //                    //If any of the front bumpers get press, move to the identify state
            //                    //and start a 5 second timer
            //                case FIVE_SEC_TIMER:
            //                    nextState = FindNext;
            //                    makeTransition = TRUE;
            //                    Init_FindNext_SubHSM();
            //
            //                    //                //start 5 second timer
            //                    //                ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS); 
            //
            //                    break;
            //                case TRACK_WIRE_DETECTED:
            //                    nextState = Deposit;
            //                    makeTransition = TRUE;
            //                    Init_Deposit_SubHSM();
            //                    //                //start 5 second timer
            //                    //                ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS); 
            //
            //                    break;
            //                default:
            //                    break;
            //            }

            break;



        case Deposit:
            printf("Deposit \r\n");

            //printf("In Deposit state. Not Implemented Yet. \r\n");
            //has sub HSM
            //remember to initialize in previous state transition 
            ThisEvent = Run_Deposit_SubHSM(ThisEvent);

            nextState = FindNext;
            makeTransition = TRUE;
            Init_FindNext_SubHSM();
            break;


        case FindNext:
            printf("FindNext \r\n");

            //printf("In FindNext state. Not Implemented Yet. \r\n");
            //has sub HSM
            //remember to initialize in previous state transition 
            ES_Timer_InitTimer(Timer_For_Lost, TIMER_LOST_TICKS);


            //Transitions
            switch (ThisEvent.EventType) {

                case BEACON_DETECTED:
                    nextState = Navigate;
                    makeTransition = TRUE;
                    Init_Navigate_SubHSM();

                    break;
                case BB_TAPE_BLACK:
                    //DO 180 DEGREE TANK TURN
                    // Timer will need to be used and adjusted
                    Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
                    Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);

                    nextState = FindNextInverse;
                    makeTransition = TRUE;
                    Init_FindNextInverse_SubHSM();

                    break;

                case HI_IM_LOST:
                    nextState = CantFind;
                    makeTransition = TRUE;
                    break;

                default:
                    break;
            }

            break;


        case FindNextInverse:
            printf("FindNextInverse \r\n");

            //printf("In FindNext state. Not Implemented Yet. \r\n");
            //has sub HSM
            //remember to initialize in previous state transition 

            //Transitions
            switch (ThisEvent.EventType) {

                case BEACON_DETECTED:
                    nextState = Navigate;
                    makeTransition = TRUE;
                    Init_Navigate_SubHSM();

                    break;

                case HI_IM_LOST:
                    nextState = CantFind;
                    makeTransition = TRUE;
                    break;

                default:
                    break;
            }


            break;

        case CantFind:
            printf("CantFind \r\n");
            // no sub hsm
            //remember to initialize in previous state transition 

            //Transitions
            switch (ThisEvent.EventType) {

                case FRB_PRESSED:
                    nextState = Identify;
                    makeTransition = TRUE;
                    Init_Identify_SubHSM();

                    break;

                case FLB_PRESSED:
                    nextState = Identify;
                    makeTransition = TRUE;
                    Init_Identify_SubHSM();
                    break;

                case BL_TAPE_BLACK:
                    nextState = Relocate;
                    makeTransition = TRUE;
                    ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS);
                    Init_Relocate_SubHSM();

                    break;

                case BR_TAPE_BLACK:
                    nextState = Relocate;
                    makeTransition = TRUE;
                    ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS);
                    Init_Relocate_SubHSM();

                    break;

                default:
                    break;
            }
            break;




        default: // all unhandled states fall into here
            break;



    } // end switch on Current State



    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunBosshogHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunBosshogHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/
