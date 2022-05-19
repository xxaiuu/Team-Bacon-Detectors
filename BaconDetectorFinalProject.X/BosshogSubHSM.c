/*
 * File: TemplateSubHSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel H Elkaim
 *
 * Template file to set up a Heirarchical State Machine to work with the Events and
 * Services Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the names
 * will have to be changed to match your code.
 *
 * There is for a substate machine. Make sure it has a unique name
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
#include "BosshogSubHSM.h"
#include "bosshog.h"

#define motorspeed 75

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
typedef enum {
    InitPSubState,
    SubFirstState,
    AlignCenterTape,
    WalkAlongLine,
    Follow,
    Jig,
    Align,
    Validate,
    IsDead,
    Evade,
    ReAlign,
    Locate,
    BackLocate,
    Corner,
    BackCorner,
    TLT_TRT_One_For_Locate,
    TLT_TRT_One_For_BackLocate,
} BosshogSubHSMState_t;


static const char *StateNames[] = {
    "InitPSubState",
    "SubFirstState",
    "AlignCenterTape",
    "WalkAlongLine",
    "Follow",
    "Jig",
    "Align",
    "Validate",
    "IsDead",
    "Evade",
    "ReAlign",
    "Locate",
    "BackLocate",
    "Corner",
    "BackCorner",
    "TLT_TRT_One_For_Locate",
};



/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static BosshogSubHSMState_t CurrentState = InitPSubState; // <- change name to match ENUM
static uint8_t MyPriority;


/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTemplateSubHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitBosshogSubHSM(void) {
    ES_Event returnEvent;

    CurrentState = InitPSubState;
    returnEvent = RunBosshogSubHSM(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}

uint8_t Init_Relocate_SubHSM(void) {
    ES_Event returnEvent;

    CurrentState = InitPSubState;

    returnEvent = Run_Relocate_SubHSM(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}

uint8_t Init_Navigate_SubHSM(void) {
    ES_Event returnEvent;

    CurrentState = InitPSubState;

    returnEvent = Run_Navigate_SubHSM(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}

uint8_t Init_Identify_SubHSM(void) {
    ES_Event returnEvent;

    CurrentState = InitPSubState;

    returnEvent = Run_Identify_SubHSM(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}


uint8_t Init_Deposit_SubHSM(void) {
    ES_Event returnEvent;

    CurrentState = InitPSubState;

    returnEvent = Run_Deposit_SubHSM(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}

/**
 * @Function RunTemplateSubHSM(ES_Event ThisEvent)
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
ES_Event RunBosshogSubHSM(ES_Event ThisEvent) {
    uint8_t makeTransition = FALSE; // use to flag transition
    BosshogSubHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
        case InitPSubState: // If current state is initial Psedudo State
            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
            {
                // this is where you would put any actions associated with the
                // transition from the initial pseudo-state into the actual
                // initial state

                // now put the machine into the actual initial state
                nextState = SubFirstState;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case SubFirstState: // in the first state, replace this with correct names
            switch (ThisEvent.EventType) {
                case ES_NO_EVENT:
                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;

        default: // all unhandled states fall into here
            break;
    } // end switch on Current State

    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunBosshogSubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunBosshogSubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

ES_Event Run_Relocate_SubHSM(ES_Event ThisEvent) {
    uint8_t makeTransition = FALSE; // use to flag transition
    BosshogSubHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
        case InitPSubState: // If current state is initial Psedudo State
            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
            {
                // this is where you would put any actions associated with the
                // transition from the initial pseudo-state into the actual
                // initial state

                // now put the machine into the actual initial state
                nextState = AlignCenterTape;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case AlignCenterTape: // in the first state, replace this with correct names
            //TANK TURN LEFT
            Bosshog_RightMtrSpeed(motorspeed);
            Bosshog_LeftMtrSpeed(-motorspeed);


            //Transitions
            switch (ThisEvent.EventType) {
                case BC_TAPE_BLACK:
                    nextState = WalkAlongLine;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }

            break;

        case WalkAlongLine:
            if (ThisEvent.EventType == BL_TAPE_BLACK) {
                //slight drift right
                Bosshog_RightMtrSpeed(motorspeed);
                Bosshog_LeftMtrSpeed(motorspeed - 10);
            }
            if (ThisEvent.EventType == BR_TAPE_BLACK) {
                //slight drift left
                Bosshog_RightMtrSpeed(motorspeed - 10);
                Bosshog_LeftMtrSpeed(motorspeed);
            }

            //exit out of top hsm when 5 timer second is over

        default: // all unhandled states fall into here
            break;
    } // end switch on Current State


    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunBosshogSubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunBosshogSubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}

ES_Event Run_Navigate_SubHSM(ES_Event ThisEvent) {
    //jumps out of subhsm when a front bumper is hit which is handled in the top hsm

    uint8_t makeTransition = FALSE; // use to flag transition
    BosshogSubHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
        case InitPSubState: // If current state is initial Psedudo State
            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
            {
                // this is where you would put any actions associated with the
                // transition from the initial pseudo-state into the actual
                // initial state

                // now put the machine into the actual initial state
                nextState = Follow;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case Follow: // in the first state, replace this with correct names
            //Go forward
            Bosshog_RightMtrSpeed(motorspeed);
            Bosshog_LeftMtrSpeed(motorspeed);


            //Transitions
            switch (ThisEvent.EventType) {
                case BEACON_LOST:
                    nextState = Jig;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }

            break;

        case Jig:

            //Jig, turn in place to the left for 25 degree and then turn in place right for 50 degree 
            //In theory, it should be able to find the signal again as it was already found before
            //There is an edge cause that it won't be able to and 
            //      the bot will have a net turn of 25 degree to the right

            //mess with jig time to change angle
            //also this assumes it will find the signal right away... it will not go back and forth with the jig I believe
            Bosshog_RightMtrSpeed(motorspeed);
            Bosshog_LeftMtrSpeed(-motorspeed);

            if (ThisEvent.EventType == JIGGY_TIME) {
                Bosshog_RightMtrSpeed(-motorspeed);
                Bosshog_LeftMtrSpeed(motorspeed);
            }

            //Transitions
            switch (ThisEvent.EventType) {
                case BEACON_DETECTED:
                    nextState = Follow;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }

            //exit out of top hsm when front bumper is hit

        default: // all unhandled states fall into here
            break;
    } // end switch on Current State


    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunBosshogSubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunBosshogSubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}

ES_Event Run_Identify_SubHSM(ES_Event ThisEvent) {
    //jumps out of subhsm when a front bumper is hit which is handled in the top hsm

    uint8_t makeTransition = FALSE; // use to flag transition
    BosshogSubHSMState_t nextState; // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState) {
        case InitPSubState: // If current state is initial Psedudo State
            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
            {
                // this is where you would put any actions associated with the
                // transition from the initial pseudo-state into the actual
                // initial state

                // now put the machine into the actual initial state
                nextState = Align;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case Align: // this is the first state
            //Turn Right
            Bosshog_RightMtrSpeed(-motorspeed);
            Bosshog_LeftMtrSpeed(motorspeed);

            //Transitions
            switch (ThisEvent.EventType) {
                case SB_PRESSED:
                    nextState = Validate;
                    makeTransition = TRUE;

                    Bosshog_RightMtrSpeed(0);
                    Bosshog_LeftMtrSpeed(0);

                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }

            break;

        case Validate:
            //This state checks the top center tape

            //Transitions
            switch (ThisEvent.EventType) {
                case TC_TAPE_BLACK:
                    nextState = IsDead;
                    makeTransition = TRUE;
                    ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS);

                    break;
                case TC_TAPE_WHITE:
                    nextState = Locate;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }


            break;



        case IsDead:
            //set motors to go forward
            Bosshog_RightMtrSpeed(motorspeed);
            Bosshog_LeftMtrSpeed(motorspeed);

            //also a transition but during the duration the timer is still active
            if (ThisEvent.EventType == SB_RELEASED) {
                nextState = ReAlign;
                makeTransition = TRUE;
            }

            //when the 5 second timer time out
            if (ThisEvent.EventType == FIVE_SEC_TIMER) {
                //stop motors
                Bosshog_RightMtrSpeed(0);
                Bosshog_LeftMtrSpeed(0);

                //check tape sensor and transition off that
                //Transitions
                switch (ThisEvent.EventType) {
                    case TC_TAPE_BLACK:
                        nextState = Evade;
                        makeTransition = TRUE;
                        ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS);

                        break;
                    case TC_TAPE_WHITE:
                        nextState = Locate;
                        makeTransition = TRUE;
                        break;

                    default: // all unhandled events pass the event back up to the next level
                        break;
                }
            }

            break;



        case ReAlign:
            //Motors turn left
            Bosshog_RightMtrSpeed(motorspeed);
            Bosshog_LeftMtrSpeed(-motorspeed);

            //Transition
            if (ThisEvent.EventType == SB_PRESSED) {
                nextState = IsDead;
                makeTransition = TRUE;

                Bosshog_RightMtrSpeed(0);
                Bosshog_LeftMtrSpeed(0);
            }
            break;


        case Evade:
            //turn back and left
            Bosshog_RightMtrSpeed(-motorspeed);
            Bosshog_LeftMtrSpeed(-motorspeed - 15);

            if (ThisEvent.EventType == BB_TAPE_BLACK) {
                //set motors forward
                Bosshog_RightMtrSpeed(motorspeed);
                Bosshog_LeftMtrSpeed(motorspeed);
            }


            //exits out of this when timer expires 
            // which is handled in the top HSM

            break;


        case Locate:
            //go straight
            Bosshog_RightMtrSpeed(motorspeed);
            Bosshog_LeftMtrSpeed(motorspeed);

            if (ThisEvent.EventType == SB_RELEASED) {
                //slight turn left
                Bosshog_RightMtrSpeed(motorspeed);
                Bosshog_LeftMtrSpeed(motorspeed - 10);
            }
            if (ThisEvent.EventType == SB_PRESSED) {
                //slight turn right
                Bosshog_RightMtrSpeed(motorspeed - 10);
                Bosshog_LeftMtrSpeed(motorspeed);
            }

            //Transitions
            switch (ThisEvent.EventType) {
                case TL_TAPE_BLACK:
                    nextState = TLT_TRT_One_For_Locate;
                    makeTransition = TRUE;
                    break;

                case TC_TAPE_BLACK:
                    nextState = BackLocate;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }

            //track wire will be handle at the top (exits out of this sub hsm)
            break;

        case TLT_TRT_One_For_Locate:
            //Transitions
            switch (ThisEvent.EventType) {
                case TR_TAPE_BLACK:
                    nextState = Corner;
                    makeTransition = TRUE;
                    break;
                case TR_TAPE_WHITE:
                    nextState = Locate;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;

        case Corner:
            //Turn Hard Right
            Bosshog_RightMtrSpeed(motorspeed + 25);
            Bosshog_LeftMtrSpeed(motorspeed - 25);

            //Transitions
            switch (ThisEvent.EventType) {
                case SB_PRESSED:
                    nextState = Locate;
                    makeTransition = TRUE;
                    break;
                case FRB_PRESSED:
                    nextState = Locate;
                    makeTransition = TRUE;
                    break;

                case FLB_PRESSED:
                    nextState = Locate;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }

            break;

        case BackLocate:
            // go straight back and do the inverse logic of Locate
            Bosshog_RightMtrSpeed(-motorspeed);
            Bosshog_LeftMtrSpeed(-motorspeed);

            // no logic change. the logic makes sense in my head?
            if (ThisEvent.EventType == SB_RELEASED) {
                //slight turn left
                Bosshog_RightMtrSpeed(motorspeed);
                Bosshog_LeftMtrSpeed(motorspeed - 10);
            }
            if (ThisEvent.EventType == SB_PRESSED) {
                //slight turn right
                Bosshog_RightMtrSpeed(motorspeed - 10);
                Bosshog_LeftMtrSpeed(motorspeed);
            }
            
            //Transitions
            switch (ThisEvent.EventType) {
                case TL_TAPE_BLACK:
                    nextState = TLT_TRT_One_For_BackLocate;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            
            break;

        case TLT_TRT_One_For_BackLocate:
            //Transitions
            switch (ThisEvent.EventType) {
                case TR_TAPE_BLACK:
                    nextState = BackCorner;
                    makeTransition = TRUE;
                    break;
                case TR_TAPE_WHITE:
                    nextState = BackLocate;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;
            
        case BackCorner:
            //Turn Back Left
            Bosshog_RightMtrSpeed(motorspeed - 25);
            Bosshog_LeftMtrSpeed(motorspeed + 25);
            
            //Transitions
            switch (ThisEvent.EventType) {
                case SB_PRESSED:
                    nextState = Locate;
                    makeTransition = TRUE;
                    break;
                case BRB_PRESSED:
                    nextState = Locate;
                    makeTransition = TRUE;
                    break;

                case BLB_PRESSED:
                    nextState = Locate;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;

        default: // all unhandled states fall into here
            break;
    } // end switch on Current State


    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunBosshogSubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunBosshogSubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}

/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/
