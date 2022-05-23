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

//#define SideBumper
#define NoSideBumper

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
    DepositInit,
    TCT_and_TRT_One_For_Deposit,
    TLT_and_TRT_One_For_Deposit,
    Scan,
    Dispense,
    Spin,
    EvadeTower,
    SpinOtherWay,
    EvadeOtherWay,
    NoSideAlign,
    Stop,
    AlignBackUp,
    AlignDriftLeft,
    WallHug,
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
    "TLT_TRT_One_For_BackLocate",
    "DepositInit",
    "TCT_and_TRT_One_For_Deposit",
    "TLT_and_TRT_One_For_Deposit",
    "Scan",
    "Dispense",
    "Spin",
    "EvadeTower",
    "SpinOtherWay",
    "EvadeOtherWay",
    "NoSideAlign",
    "Stop",
    "AlignBackUp",
    "AlignDriftLeft",
    "WallHug",
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
//uint8_t InitBosshogSubHSM(void) {
//    ES_Event returnEvent;
//
//    CurrentState = InitPSubState;
//    returnEvent = RunBosshogSubHSM(INIT_EVENT);
//    if (returnEvent.EventType == ES_NO_EVENT) {
//        return TRUE;
//    }
//    return FALSE;
//}

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

uint8_t Init_FindNext_SubHSM(void) {
    ES_Event returnEvent;

    CurrentState = InitPSubState;

    returnEvent = Run_FindNext_SubHSM(INIT_EVENT);
    if (returnEvent.EventType == ES_NO_EVENT) {
        return TRUE;
    }
    return FALSE;
}

uint8_t Init_FindNextInverse_SubHSM(void) {
    ES_Event returnEvent;

    CurrentState = InitPSubState;

    returnEvent = Run_FindNextInverse_SubHSM(INIT_EVENT);
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

//Not actually using this sub hsm

//ES_Event RunBosshogSubHSM(ES_Event ThisEvent) {
//    uint8_t makeTransition = FALSE; // use to flag transition
//    BosshogSubHSMState_t nextState; // <- change type to correct enum
//
//    ES_Tattle(); // trace call stack
//
//    switch (CurrentState) {
//        case InitPSubState: // If current state is initial Psedudo State
//            if (ThisEvent.EventType == ES_INIT)// only respond to ES_Init
//            {
//                // this is where you would put any actions associated with the
//                // transition from the initial pseudo-state into the actual
//                // initial state
//
//                // now put the machine into the actual initial state
//                nextState = SubFirstState;
//                makeTransition = TRUE;
//                ThisEvent.EventType = ES_NO_EVENT;
//            }
//            break;
//
//        case SubFirstState: // in the first state, replace this with correct names
//            switch (ThisEvent.EventType) {
//                case ES_NO_EVENT:
//                default: // all unhandled events pass the event back up to the next level
//                    break;
//            }
//            break;
//
//        default: // all unhandled states fall into here
//            break;
//    } // end switch on Current State
//
//    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
//        // recursively call the current state with an exit event
//        RunBosshogSubHSM(EXIT_EVENT); // <- rename to your own Run function
//        CurrentState = nextState;
//        RunBosshogSubHSM(ENTRY_EVENT); // <- rename to your own Run function
//    }
//
//    ES_Tail(); // trace call stack end
//    return ThisEvent;
//}
//

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
            printf("Relocate -> AlignCenterTape \r\n");

            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
            Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED);


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
            printf("Relocate -> WalkAlongLine \r\n");

            if (ThisEvent.EventType == BL_TAPE_BLACK) {
                //slight drift right
                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 5);
            }
            if (ThisEvent.EventType == BR_TAPE_BLACK) {
                //slight drift left
                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED - 5);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            }

            //exit out of top hsm when 5 timer second is over

        default: // all unhandled states fall into here
            break;
    } // end switch on Current State


    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        Run_Relocate_SubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        Run_Relocate_SubHSM(ENTRY_EVENT); // <- rename to your own Run function
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
            printf("Navigate -> Follow \r\n");

            //Go forward
            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);


            //Transitions
            switch (ThisEvent.EventType) {
                case BEACON_LOST:
                    nextState = Jig;
                    makeTransition = TRUE;
                    ES_Timer_InitTimer(Timer_For_Jig, TIMER_JIG_TICKS);

                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }

            break;

        case Jig:
            printf("Navigate -> Jig \r\n");


            //Jig, turn in place to the left for 25 degree and then turn in place right for 50 degree 
            //In theory, it should be able to find the signal again as it was already found before
            //There is an edge cause that it won't be able to and 
            //      the bot will have a net turn of 25 degree to the right

            //mess with jig time to change angle
            //also this assumes it will find the signal right away... it will not go back and forth with the jig I believe
            Bosshog_RightMtrSpeed((RIGHT_MOTOR_SPEED - 10));
            Bosshog_LeftMtrSpeed(-(LEFT_MOTOR_SPEED - 10));

            if (ThisEvent.EventType == JIGGY_TIME) {
                Bosshog_RightMtrSpeed(-(RIGHT_MOTOR_SPEED - 10));
                Bosshog_LeftMtrSpeed((LEFT_MOTOR_SPEED - 10));
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
        Run_Navigate_SubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        Run_Navigate_SubHSM(ENTRY_EVENT); // <- rename to your own Run function
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
                //nextState = Align;
                nextState = Align;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case Stop:
            printf("Identify -> Stop \r\n");

            Bosshog_RightMtrSpeed(0);
            Bosshog_LeftMtrSpeed(0);
            break;

            //        case AlignBackUp:
            //            Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
            //            Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED);
            //            if (ThisEvent.EventType == ALIGNING_TIMER) {
            //                Bosshog_RightMtrSpeed(0);
            //                Bosshog_LeftMtrSpeed(0);
            //
            //                nextState = AlignDriftLeft;
            //                makeTransition = TRUE;
            //                ES_Timer_InitTimer(Timer_For_Align, 700);
            //
            //
            //            }
            //
            //            break;
            //
            //        case AlignDriftLeft:
            //            printf("DOING THE SIDE SCOOT\r\n");
            //            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED - 10);
            //            Bosshog_LeftMtrSpeed(BOSSHOG_MAX_SPEED - 20);
            //
            //            if (ThisEvent.EventType == ALIGNING_TIMER) {
            //                Bosshog_RightMtrSpeed(0);
            //                Bosshog_LeftMtrSpeed(0);
            //
            //                nextState = Stop;
            //                makeTransition = TRUE;
            //            }
            //
            //            if (ThisEvent.EventType == FLB_PRESSED) {
            //                printf("FRONT BUMPER GOT PRESSED \r\n");
            //                Bosshog_RightMtrSpeed(0);
            //                Bosshog_LeftMtrSpeed(0);
            //                nextState = AlignBackUp; //Validate;
            //
            //                makeTransition = TRUE;
            //                ES_Timer_InitTimer(Timer_For_Align, 550);
            //
            //            }
            //            if (ThisEvent.EventType == SB_PRESSED) {
            //                printf("SIDE BUMPER GOT PRESSED YAYAY\r\n");
            //                Bosshog_RightMtrSpeed(0);
            //                Bosshog_LeftMtrSpeed(0);
            //                nextState = Stop; //Validate;
            //                makeTransition = TRUE;
            //            }
            //
            //            break;


        case Align: // this is the first state
            printf("Identify -> Align \r\n");

            //Turn Right
//            Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
//            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);

            //Transitions
            switch (ThisEvent.EventType) {
                    //                case SB_PRESSED:
                    //                    nextState = Validate;
                    //                    makeTransition = TRUE;
                    //
                    //                    Bosshog_RightMtrSpeed(0);
                    //                    Bosshog_LeftMtrSpeed(0);
                    //
                    //                    break;

                case BLB_PRESSED:

                    //move to another state
                    printf("BLB PRESSED SHOULD STOP TANK TURN\r\n");
                    //nextState = NoSideAlign;
                    Bosshog_RightMtrSpeed(100);
                    Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 25);
                    nextState = WallHug;
                    makeTransition = TRUE;
                    //                    printf("WE ARE HERE MOTORS SHOULD STOP\r\n");

                    //                    nextState = Stop;
                    //                    makeTransition = TRUE;
                    break;

                case BRB_PRESSED:
                    //move to another state
                    //nextState = NoSideAlign;
                    Bosshog_RightMtrSpeed(100);
                    Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 25);
                    nextState = WallHug;
                    makeTransition = TRUE;
                    //printf("WE ARE HERE MOTORS SHOULD STOP\r\n");

                    //                     nextState = Stop;
                    //                    makeTransition = TRUE;
                    break;
                    //
                    //                case TAPE_ALIGN:
                    //                    nextState = Stop;
                    //                    makeTransition = TRUE;
                    //                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }


            //            if (BosshogReadTopLeftTape() == TAPE_BLACK) {
            //                nextState = TLT_TRT_One_For_Locate;
            //                makeTransition = TRUE;
            //            }

            //            printf("about to run tape checking code\r\n");
            //            if (BosshogReadTopCenterTape() == TAPE_BLACK && BosshogReadTopRightTape() == TAPE_BLACK) {
            //                printf("Detected two black tape sensors\r\n");
            //                nextState = Stop;
            //                makeTransition = TRUE;
            //            }


            break;
        case NoSideAlign:

            //hard left
            Bosshog_RightMtrSpeed(100);
            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 25);
            //first bumper hit
            if (ThisEvent.EventType == FLB_PRESSED) {
                printf("FRONT BUMPER GOT PRESSED \r\n");
                //                Bosshog_RightMtrSpeed(0);
                //                Bosshog_LeftMtrSpeed(0);
                // nextState = Stop; //Validate;
                // nextState = Align;


                
                nextState = WallHug;
                makeTransition = TRUE;
                //                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
                //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            }

            //            switch(ThisEvent.EventType){
            //                
            //                case TAPE_ALIGN:
            //                    nextState = Stop;
            //                    makeTransition = TRUE;
            //                    break;
            //                default:
            //                    break;
            //            }
            //            

            //                        if (ThisEvent.EventType == SB_PRESSED) {
            //                            printf("SIDE BUMPER GOT PRESSED YAYAY\r\n");
            //                            Bosshog_RightMtrSpeed(0);
            //                            Bosshog_LeftMtrSpeed(0);
            //                            nextState = Stop; //Validate;
            //                            makeTransition = TRUE;
            //                        }

            //            if (ThisEvent.EventType == SB_PRESSED) {
            //                printf("SIDE BUMPER GOT PRESSED YAYAY\r\n");
            //                Bosshog_RightMtrSpeed(0);
            //                Bosshog_LeftMtrSpeed(0);
            //                nextState = Stop; //Validate;
            //                makeTransition = TRUE;
            //            }
            //
            //
            //            switch (BosshogReadTopLeftTape()) {
            //                case TAPE_BLACK:
            //                    nextState = TLT_TRT_One_For_BackLocate;
            //                    makeTransition = TRUE;
            //                    break;
            //
            //                default: // all unhandled events pass the event back up to the next level
            //                    break;
            //            }

            //            if (BosshogReadTopCenterTape() == TAPE_BLACK && BosshogReadTopRightTape() == TAPE_BLACK){
            //                nextState = Stop;
            //                makeTransition = TRUE;
            //            }

            break;

        case WallHug:
            printf("In WallHug State \r\n");
//            if (n == 1) {
//                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
//                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
//                n = 0;
//            }

            if (ThisEvent.EventType == FLB_PRESSED) {
                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
                printf("TANK TURN SINCE FRONT GOT HIT");
            }
            if (ThisEvent.EventType == BLB_PRESSED) {
                Bosshog_RightMtrSpeed(100);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 25);
                printf("TURN LEFT SINCE BACK GOT HIT");

            }
//            if (ThisEvent.EventType == TAPE_ALIGNED) {
//                nextState = Stop;
//                makeTransition = TRUE;
//                }

            break;


        case Validate:
            //This state checks the top center tape
            printf("Identify -> Validate \r\n");

            //Transitions
            //            switch (BosshogReadTopCenterTape()) {
            //                case TAPE_BLACK:
            //                    nextState = IsDead;
            //                    makeTransition = TRUE;
            //                    ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS);
            //
            //                    break;
            //                case TAPE_WHITE:
            //                    nextState = Locate;
            //                    makeTransition = TRUE;
            //                    break;
            //
            //                default: // all unhandled events pass the event back up to the next level
            //                    break;
            //            }


            break;



        case IsDead:
            //set motors to go forward
            printf("Identify -> IsDead \r\n");

            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);

            //also a transition but during the duration the timer is still active
            //if (ThisEvent.EventType == SB_RELEASED) {
            if (ThisEvent.EventType == FLB_RELEASED) {

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
                switch (BosshogReadTopCenterTape()) {
                    case TAPE_BLACK:
                        nextState = Evade;
                        makeTransition = TRUE;
                        ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS);

                        break;
                    case TAPE_WHITE:
                        nextState = Locate;
                        makeTransition = TRUE;
                        break;

                    default: // all unhandled events pass the event back up to the next level
                        break;
                }
            }

            break;



        case ReAlign:
            printf("Identify -> ReAlign \r\n");

            //Motors turn left
            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
            Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED);

            //Transition
            if (ThisEvent.EventType == SB_PRESSED) {
                nextState = IsDead;
                makeTransition = TRUE;

                Bosshog_RightMtrSpeed(0);
                Bosshog_LeftMtrSpeed(0);
            }
            break;


        case Evade:
            printf("Identify -> Evade \r\n");

            //turn back and left
            Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
            Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED - 15);

            if (ThisEvent.EventType == BB_TAPE_BLACK) {
                //set motors forward
                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            }


            //exits out of this when timer expires 
            // which is handled in the top HSM

            break;


        case Locate:
            printf("Identify -> Locate \r\n");

            //go straight
            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
#ifdef SideBumper
            if (ThisEvent.EventType == SB_RELEASED) {
                //slight turn left
                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 10);
            }
            if (ThisEvent.EventType == SB_PRESSED) {
                //slight turn right
                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED - 10);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            }
#endif
#ifdef NoSideBumper
            //Tank turn and then drift left over and over 
            if ((ThisEvent.EventType == FRB_PRESSED) || (ThisEvent.EventType == FLB_PRESSED)) {
                //tank turn
                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            }
            if ((ThisEvent.EventType == BRB_PRESSED) || (ThisEvent.EventType == BLB_PRESSED)) {
                //slight turn left
                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED + 5);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            }

#endif



            //Transitions
            if (BosshogReadTopLeftTape() == TAPE_BLACK) {
                nextState = TLT_TRT_One_For_Locate;
                makeTransition = TRUE;
            }


            switch (ThisEvent.EventType) {
                    //                case TL_TAPE_BLACK:
                    //                    nextState = TLT_TRT_One_For_Locate;
                    //                    makeTransition = TRUE;
                    //                    break;

                case BC_TAPE_BLACK:
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
            switch (BosshogReadTopRightTape()) {
                case TAPE_BLACK:
                    //nextState = Corner;
                    nextState = Stop;
                    makeTransition = TRUE;
                    break;
                case TAPE_WHITE:
                    //nextState = Locate;
                    nextState = Align;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;

        case Corner:
            printf("Identify -> Corner \r\n");

            //Turn Hard Right
            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED + 10);
            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 10);

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
            printf("Identify -> BackLocate \r\n");

            // go straight back and do the inverse logic of Locate
            Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
            Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED);

            // no logic change. the logic makes sense in my head?
            if (ThisEvent.EventType == SB_RELEASED) {
                //slight turn left
                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 5);
            }
            if (ThisEvent.EventType == SB_PRESSED) {
                //slight turn right
                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED - 5);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            }

            //Transitions
            switch (BosshogReadTopLeftTape()) {
                case TAPE_BLACK:
                    nextState = TLT_TRT_One_For_BackLocate;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }

            break;

        case TLT_TRT_One_For_BackLocate:
            //Transitions
            switch (BosshogReadTopRightTape()) {
                case TAPE_BLACK:
                    //nextState = BackCorner;
                    nextState = Stop;
                    makeTransition = TRUE;
                    break;
                case TAPE_WHITE:
                    //nextState = BackLocate;
                    nextState = NoSideAlign;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;

        case BackCorner:
            printf("Identify -> BackCorner \r\n");

            //Turn Back Left
            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED - 10);
            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED + 10);

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
        Run_Identify_SubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        Run_Identify_SubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}

ES_Event Run_Deposit_SubHSM(ES_Event ThisEvent) {
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
                nextState = DepositInit;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case DepositInit: // in the first state, replace this with correct names
            //Drive Backward
            Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
            Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED);


            if (ThisEvent.EventType == SB_RELEASED) {
                //slight turn left
                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 10);
            }
            if (ThisEvent.EventType == SB_PRESSED) {
                //slight turn right
                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED - 10);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            }

            //Transitions
            switch (BosshogReadTopRightTape()) {
                case TAPE_BLACK:
                    nextState = TLT_and_TRT_One_For_Deposit;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }

            break;

            //exit out of top hsm when 5 timer second is over

        case TLT_and_TRT_One_For_Deposit:
            //Transitions
            switch (BosshogReadTopLeftTape()) {
                case TAPE_BLACK:
                    nextState = Scan;
                    makeTransition = TRUE;
                    break;

                case TAPE_WHITE:
                    nextState = DepositInit;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }

            break;

        case Scan:
            //go forward and align with side
            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);

            switch (BosshogReadTopCenterTape()) {
                case TAPE_BLACK:
                    nextState = TCT_and_TRT_One_For_Deposit;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }

            break;

        case TCT_and_TRT_One_For_Deposit:
            switch (BosshogReadTopRightTape()) {
                case TAPE_BLACK:
                    nextState = Dispense;
                    makeTransition = TRUE;
                    break;

                case TAPE_WHITE:
                    nextState = Scan;
                    makeTransition = TRUE;
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;


        case Dispense:
            //Turn motor off
            Bosshog_RightMtrSpeed(0);
            Bosshog_LeftMtrSpeed(0);

            //Relocate Sensor
            //exits out of the subhsm as makeTransition is false 
            //and no other cases are being handled. Top level auto sends it to find next state
            break;


        default: // all unhandled states fall into here
            break;
    } // end switch on Current State


    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        Run_Deposit_SubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        Run_Deposit_SubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}

ES_Event Run_FindNext_SubHSM(ES_Event ThisEvent) {
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
                nextState = Spin;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case Spin: // in the first state, replace this with correct names
            //Spin backward, towards left
            Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED - 10);
            Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED);

            //Transitions
            switch (ThisEvent.EventType) {
                case BLB_PRESSED:
                    nextState = EvadeTower;
                    makeTransition = TRUE;

                    //start timer
                    ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS);

                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }

            break;

        case EvadeTower:
            //go forward and slightly left
            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED + 10);
            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);

            //Transitions
            switch (ThisEvent.EventType) {
                case FIVE_SEC_TIMER:
                    nextState = Spin;
                    makeTransition = TRUE;

                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }

            break;
            //jumps out of sub hsm whenever a beacon is detected or when a back tape is detected black
            // or cant find timer expires

        default: // all unhandled states fall into here
            break;
    } // end switch on Current State


    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        Run_FindNext_SubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        Run_FindNext_SubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}

ES_Event Run_FindNextInverse_SubHSM(ES_Event ThisEvent) {
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
                nextState = SpinOtherWay;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case SpinOtherWay: // in the first state, replace this with correct names
            //Spin backward, towards right
            Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
            Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED - 10);

            //Transitions
            switch (ThisEvent.EventType) {
                case BRB_PRESSED:
                    nextState = EvadeOtherWay;
                    makeTransition = TRUE;

                    //start timer
                    ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS);

                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }

            break;

        case EvadeOtherWay:
            //go forward and slightly right
            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED + 10);

            //Transitions
            switch (ThisEvent.EventType) {
                case FIVE_SEC_TIMER:
                    nextState = SpinOtherWay;
                    makeTransition = TRUE;

                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }

            break;
            //jumps out of sub hsm whenever a beacon is detected or cant find timer expires

        default: // all unhandled states fall into here
            break;
    } // end switch on Current State


    if (makeTransition == TRUE) { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        Run_FindNextInverse_SubHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        Run_FindNextInverse_SubHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}


/*******************************************************************************
 * PRIVATE FUNCTIONS                                                           *
 ******************************************************************************/
