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
    //    TLT_TRT_One_For_Locate,
    //    TLT_TRT_One_For_BackLocate,
    DepositInit,
    //    TCT_and_TRT_One_For_Deposit,
    //    TLT_and_TRT_One_For_Deposit,
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
    //PreWallHug,
    Wiggle,
    DepositExit,
    AlignTank,
    JigPause,
    //DepositEdge,
    JigMore,
    JigMoreTwo,
    Unstuck,
    ForwardAlign,
    UnstuckReverse,
    Reload,
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
    //    "TLT_TRT_One_For_Locate",
    //    "TLT_TRT_One_For_BackLocate",
    "DepositInit",
    //    "TCT_and_TRT_One_For_Deposit",
    //    "TLT_and_TRT_One_For_Deposit",
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
    //"PreWallHug",
    "Wiggle",
    "DepositExit",
    "AlignTank",
    "JigPause",
    //"DepositEdge",
    "JigMore",
    "JigMoreTwo",
    "Unstuck",
    "ForwardAlign",
    "UnstuckReverse",
    "Reload",
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
static uint8_t setDir = 0;
static uint8_t isSecond = 0;


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

uint8_t Init_ForwardNext_SubHSM(void) {
    ES_Event returnEvent;

    CurrentState = InitPSubState;

    returnEvent = Run_ForwardNext_SubHSM(INIT_EVENT);
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
                nextState = Follow; //Stop; 
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case Stop:


            if (ThisEvent.EventType == BEACON_DETECTED) {
                nextState = Follow;
                makeTransition = TRUE;
            }
            if (ThisEvent.EventType == BEACON_LOST) {
                nextState = Jig;
                makeTransition = TRUE;
            }
            break;

        case Follow: // in the first state, replace this with correct names
            printf("Navigate -> Follow \r\n");

            //Go forward
            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED + 10);
            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED + 10 + 1);


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
                nextState = JigPause;
                makeTransition = TRUE;
                //ES_Timer_InitTimer(Timer_For_Jig, TIMER_JIG_TICKS);

                //                Bosshog_RightMtrSpeed(-(RIGHT_MOTOR_SPEED - 15));
                //                Bosshog_LeftMtrSpeed((LEFT_MOTOR_SPEED - 15));
            }


            //            //Transitions
            switch (ThisEvent.EventType) {
                case BEACON_DETECTED:
                    nextState = Follow; //JigPause;
                    makeTransition = TRUE;
                    //ES_Timer_InitTimer(Timer_For_Align, TIMER_ALIGN_TICKS);
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;

        case JigPause:

            Bosshog_RightMtrSpeed(-(RIGHT_MOTOR_SPEED - 10));
            Bosshog_LeftMtrSpeed((LEFT_MOTOR_SPEED - 10));
            if (ThisEvent.EventType == JIGGY_TIME) {
                nextState = JigMore;
                makeTransition = TRUE;
                //ES_Timer_InitTimer(Timer_For_Jig, TIMER_JIG_TICKS);

                //                Bosshog_RightMtrSpeed(-(RIGHT_MOTOR_SPEED - 15));
                //                Bosshog_LeftMtrSpeed((LEFT_MOTOR_SPEED - 15));
            }


            //                        switch (ThisEvent.EventType) {
            //                case BEACON_DETECTED:
            //                    nextState = Follow; //JigPause;
            //                    makeTransition = TRUE;
            //                    // ES_Timer_InitTimer(Timer_For_Align, TIMER_ALIGN_TICKS);
            //                    break;
            //
            //                default: // all unhandled events pass the event back up to the next level
            //                    break;
            //            }
            //         

            //            //Transitions
            switch (ThisEvent.EventType) {
                case BEACON_DETECTED:
                    nextState = Follow; //JigPause;
                    makeTransition = TRUE;
                    // ES_Timer_InitTimer(Timer_For_Align, TIMER_ALIGN_TICKS);
                    break;

                default: // all unhandled events pass the event back up to the next level
                    break;
            }
            break;

            //        case JigPause:
            //            Bosshog_RightMtrSpeed(0);
            //            Bosshog_LeftMtrSpeed(0);
            //
            //            if (ThisEvent.EventType == ALIGNING_TIMER) {
            //                nextState = Follow;
            //                makeTransition = TRUE;
            //            }
            //            break;
            //
            //        case JigMore:
            //            Bosshog_RightMtrSpeed(-(RIGHT_MOTOR_SPEED - 25));
            //            Bosshog_LeftMtrSpeed((LEFT_MOTOR_SPEED - 25));
            //            if (ThisEvent.EventType == JIGGY_TIME) {
            //                nextState = JigMoreTwo;
            //                makeTransition = TRUE;
            //                ES_Timer_InitTimer(Timer_For_Jig, TIMER_JIG_TICKS);
            //
            //                //                Bosshog_RightMtrSpeed(-(RIGHT_MOTOR_SPEED - 15));
            //                //                Bosshog_LeftMtrSpeed((LEFT_MOTOR_SPEED - 15));
            //            }
            //
            //            //            //Transitions
            //            switch (ThisEvent.EventType) {
            //                case BEACON_DETECTED:
            //                    nextState = Follow; //JigPause;
            //                    makeTransition = TRUE;
            //                    ES_Timer_InitTimer(Timer_For_Align, TIMER_ALIGN_TICKS);
            //                    break;
            //
            //                default: // all unhandled events pass the event back up to the next level
            //                    break;
            //            }
            //
            //            break;
            //
            //        case JigMoreTwo:
            //            Bosshog_RightMtrSpeed((RIGHT_MOTOR_SPEED - 22));
            //            Bosshog_LeftMtrSpeed(-(LEFT_MOTOR_SPEED - 22));
            //
            //            if (ThisEvent.EventType == JIGGY_TIME) {
            //                nextState = Jig;
            //                makeTransition = TRUE;
            //                ES_Timer_InitTimer(Timer_For_Jig, TIMER_JIG_TICKS);
            //
            //                //                Bosshog_RightMtrSpeed(-(RIGHT_MOTOR_SPEED - 15));
            //                //                Bosshog_LeftMtrSpeed((LEFT_MOTOR_SPEED - 15));
            //            }
            //
            //
            //
            //            //            //Transitions
            //            switch (ThisEvent.EventType) {
            //                case BEACON_DETECTED:
            //                    nextState = Follow; //JigPause;
            //                    makeTransition = TRUE;
            //                    ES_Timer_InitTimer(Timer_For_Align, TIMER_ALIGN_TICKS);
            //                    break;
            //
            //                default: // all unhandled events pass the event back up to the next level
            //                    break;
            //            }
            //
            //            break;

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
                nextState = Align;
                printf("going to Identify -> Align \r\n");
                ES_Timer_InitTimer(Stall_Timer, 5000);
                //nextState = WallHug; //Align;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;

            }
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
        case Stop:
            printf("Identify -> Stop \r\n");

            Bosshog_RightMtrSpeed(0);
            Bosshog_LeftMtrSpeed(0);
            break;

        case Align: // this is the first state
            //            printf("Identify -> Align \r\n");

            //Turn Right
            //            Bosshog_RightMtrSpeed(-(RIGHT_MOTOR_SPEED-10));
            //            Bosshog_LeftMtrSpeed((LEFT_MOTOR_SPEED-10));

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
                    Bosshog_LeftMtrSpeed(0);
                    nextState = WallHug; //Validate; //
                    //                    Bosshog_RightMtrSpeed(0);
                    //                    Bosshog_LeftMtrSpeed(0);
                    printf("GOING TO WALLHUG State \r\n");
                    ES_Timer_InitTimer(Stall_Timer, 5000);
                    //ES_Timer_InitTimer(Timer_For_Lost, TIMER_LOST_TICKS);            //dead bot timer
                    makeTransition = TRUE;
                    //                    printf("WE ARE HERE MOTORS SHOULD STOP\r\n");

                    //                    nextState = Stop;
                    //                    makeTransition = TRUE;
                    break;

                case BRB_PRESSED:
                    //move to another state
                    //nextState = NoSideAlign;
                    Bosshog_RightMtrSpeed(100);
                    Bosshog_LeftMtrSpeed(0);
                    ES_Timer_InitTimer(Stall_Timer, 5000);
                    //ES_Timer_InitTimer(Timer_For_Lost, TIMER_LOST_TICKS);           //dead bot timer
                    nextState = WallHug; //Validate; //
                    //                    Bosshog_RightMtrSpeed(0);
                    //                    Bosshog_LeftMtrSpeed(0);
                    printf("GOING TO WallHug State \r\n");
                    makeTransition = TRUE;
                    //printf("WE ARE HERE MOTORS SHOULD STOP\r\n");



                    //                     nextState = Stop;
                    //                    makeTransition = TRUE;
                    break;


                    //problem: If it got stuck such that the back bumpers do not get press, 
                    // it will unstuck however it will never go to validate
                    // instead it will continue to wall hug. This might cause some issues
                case ES_TIMEOUT:
                    nextState = Unstuck;
                    makeTransition = TRUE;
                    ES_Timer_InitTimer(Unstuck_Timer, 1000);


                    Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
                    Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED + 20);
                    break;



                default: // all unhandled events pass the event back up to the next level
                    break;
            }

            //            printf("about to run tape checking code\r\n");
            //            if (BosshogReadTopCenterTape() == TAPE_BLACK && BosshogReadTopRightTape() == TAPE_BLACK) {
            //                printf("Detected two black tape sensors\r\n");
            //                nextState = Stop;
            //                makeTransition = TRUE;
            //            }


            break;





        case WallHug:
            //            printf("In WallHug State \r\n");
            //            if (n == 1) {
            //                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
            //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            //                n = 0;
            //            }

            if (ThisEvent.EventType == FLB_PRESSED) {
                ES_Timer_InitTimer(Stall_Timer, 5000);
                //                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED-20);
                //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED -20);
                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
                //printf("TANK TURN SINCE FRONT GOT HIT");
            }
            //            if (ThisEvent.EventType == FRB_PRESSED) {
            //                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
            //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            //                printf("TANK TURN SINCE FRONT GOT HIT");
            //            }

            if (ThisEvent.EventType == BLB_PRESSED) {
                ES_Timer_InitTimer(Stall_Timer, 5000);
                Bosshog_RightMtrSpeed(100);
                Bosshog_LeftMtrSpeed(0);
                //printf("TURN LEFT SINCE BACK GOT HIT");

            }
            //            if (ThisEvent.EventType == TAPE_ALIGNED) {
            //                nextState = Stop;
            //                makeTransition = TRUE;
            //                }
            if (ThisEvent.EventType == ES_TIMEOUT) {
                nextState = Unstuck;
                printf("Going to UNSTUCK\r\n");
                makeTransition = TRUE;
                ES_Timer_InitTimer(Unstuck_Timer, 1000);
                ES_Timer_InitTimer(Stall_Timer, 5000);



                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
                Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED + 20);


            }


            if (ThisEvent.EventType == HI_IM_LOST) {
                printf("HI IM LOST timer went off and I'm in WallHug\r\n");
                nextState = Validate;
                printf("Going to VALIDATE\r\n");
                makeTransition = TRUE;
                //                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS);
            }


            if (ThisEvent.EventType == TRACK_WIRE_DETECTED) {
                //if (ThisEvent.EventType == TRACK_WIRE_DETECTED && ES_Timer_GetTime() > (TowerFirstHitTime + 5000)) {
                //    printf("TowerTimeValue: %d\r\n", TowerFirstHitTime);
                nextState = Stop; //Validate;
                makeTransition = TRUE;
            }

            if (ThisEvent.EventType == BC_TAPE_BLACK) {
                printf("Edge tape found!!!!!!!!!!!!!!!!!\r\n");
                nextState = BackLocate;
                printf("Going to BACKLOCATE\r\n");
                //                ES_Timer_InitTimer(Stall_Timer, 5000);
                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS); // starts timer for stall detection
                Bosshog_RightMtrSpeed(-100);
                Bosshog_LeftMtrSpeed(0);
                makeTransition = TRUE;
            }


            break;


        case Unstuck:

            if (ThisEvent.EventType == ES_TIMEOUT) {

                Bosshog_RightMtrSpeed(100);
                Bosshog_LeftMtrSpeed(60); //70 does orbit
            }


            if (ThisEvent.EventType == FLB_PRESSED) {
                ES_Timer_InitTimer(Stall_Timer, 5000);
                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED + 20);
                //                 Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
                //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
                printf("TANK TURN SINCE FRONT GOT HIT");

                nextState = WallHug;
                printf("Going to WallHUG\r\n");
                makeTransition = TRUE;
            }

            if (ThisEvent.EventType == BLB_PRESSED) {
                ES_Timer_InitTimer(Stall_Timer, 5000);
                Bosshog_RightMtrSpeed(100);
                Bosshog_LeftMtrSpeed(0);
                printf("TURN LEFT SINCE BACK GOT HIT");

                nextState = WallHug;
                makeTransition = TRUE;

            }

            if (ThisEvent.EventType == HI_IM_LOST) {
                printf("HI IM LOST (DEADBOT) timer went off and I'm in WallHug\r\n");
                nextState = Validate;
                printf("Going to Validate\r\n");
                makeTransition = TRUE;
                //                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS);
            }


            //INSTEAD OF HANDLING THE DEADBOT TIMER WE WANT TO RESET IT
            //ES_Timer_InitTimer(Timer_For_Lost, TIMER_LOST_TICKS);

            if (ThisEvent.EventType == BC_TAPE_BLACK) {
                printf("Edge tape found!!!!!!!!!!!!!!!!!\r\n");
                nextState = BackLocate;
                printf("Going to BACKLOCATE\r\n");
                //                ES_Timer_InitTimer(Stall_Timer, 5000);
                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS); // starts timer for stall detection
                Bosshog_RightMtrSpeed(-100);
                Bosshog_LeftMtrSpeed(0);
                makeTransition = TRUE;
            }


            break;


        case Validate:
            //printf("MADE IT TO VALIDATEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\r\n");

            //            // if (ThisEvent.EventType == DEADBOT) {
            printf("%s\r\n", ThisEvent.EventParam);
            if (ThisEvent.EventType == TB_TAPE_BLACK) {



                ThisEvent.EventType = YEAH_ITS_A_DEADBOT;

                printf("DEAD DEAD DEAD DEAD DEAD DEAD DEAED DEAD DEAD DEAD DEAD DEAD\r\n");
            }
            if (ThisEvent.EventType == TB_TAPE_WHITE) {
                //NEED AN EVENTYPE TO KNOW IF IT'S WHITE TAPE - OTHERWISE WE WILL THINK A BUMPER HIT IS A WHITE TAPE EVENT OR SOMETHING
                printf("NOT NOT NOT NOT NOTN OTNOTN NOT NOT NOT NOT NOT NOT NOTN NOT\r\n");
                nextState = WallHug;
                printf("going to WallHUG\r\n");
                makeTransition = TRUE;
                ES_Timer_InitTimer(Stall_Timer, 5000);
                Bosshog_RightMtrSpeed(100);
                Bosshog_LeftMtrSpeed(0);
            }


            break;



            //        case IsDead:
            //            //set motors to go forward
            //            printf("Identify -> IsDead \r\n");
            //
            //            //                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
            //            //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            //            //
            //            //                //also a transition but during the duration the timer is still active
            //            //                //if (ThisEvent.EventType == SB_RELEASED) {
            //            //                if (ThisEvent.EventType == FLB_RELEASED) {
            //            //
            //            //                    nextState = ReAlign;
            //            //                    makeTransition = TRUE;
            //            //                }
            //            //
            //            //                //when the 5 second timer time out
            //            //                if (ThisEvent.EventType == FIVE_SEC_TIMER) {
            //            //                    //stop motors
            //            //                    Bosshog_RightMtrSpeed(0);
            //            //                    Bosshog_LeftMtrSpeed(0);
            //            //
            //            //                    //check tape sensor and transition off that
            //            //                    //Transitions
            //            //                    switch (BosshogReadTopCenterTape()) {
            //            //                        case TAPE_BLACK:
            //            //                            nextState = Evade;
            //            //                            makeTransition = TRUE;
            //            //                            ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS);
            //            //
            //            //                            break;
            //            //                        case TAPE_WHITE:
            //            //                            nextState = Locate;
            //            //                            makeTransition = TRUE;
            //            //                            break;
            //            //
            //            //                        default: // all unhandled events pass the event back up to the next level
            //            //                            break;
            //            //                    }
            //            //                }
            //
            //            break;

        case Evade:
            printf("MADE IT TO EVADDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDE\r\n");
            Bosshog_RightMtrSpeed(0);
            Bosshog_LeftMtrSpeed(0);

            if (ThisEvent.EventType == DEADBOT) {
                //instead of jumping up to TOPHSM
                printf("isSecond: = %d\r\n", isSecond);
                if (isSecond > 3) {
                    ThisEvent.EventType = YEAH_ITS_A_DEADBOT;
                    isSecond = 0;
                } else {
                    isSecond++;
                    ES_Timer_InitTimer(Timer_For_Lost, TIMER_LOST_TICKS);
                    nextState = BackLocate;
                    printf("going to Identify -> BackLocate \r\n");
                    makeTransition = TRUE;
                    ES_Timer_InitTimer(Stall_Timer, 5000);
                    Bosshog_RightMtrSpeed(-100);
                    Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED + 50);
                }


                printf("DEAD DEAD DEAD DEAD DEAD DEAD DEAED DEAD DEAD DEAD DEAD DEAD\r\n");
            } else if (ThisEvent.EventType == NOT_DEADBOT) {
                printf("NOT NOT NOT NOT NOTN OTNOTN NOT NOT NOT NOT NOT NOT NOTN NOT\r\n");
                nextState = BackLocate;
                printf("going to Identify -> BackLocate \r\n");
                makeTransition = TRUE;
                ES_Timer_InitTimer(Stall_Timer, 5000);
                Bosshog_RightMtrSpeed(-100);
                Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED + 50);
            }

            break;


            //        case Locate:
            //            printf("Identify -> Locate \r\n");
            //
            //            //go straight
            //            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
            //            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            //
            //          break;


        case BackLocate:
            //            printf("Identify -> BackLocate \r\n");

            //            printf("In WallHug State \r\n");
            //            if (n == 1) {
            //                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
            //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            //                n = 0;
            //            }

            if (ThisEvent.EventType == BLB_PRESSED) {
                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS); // restarts timer for stall detection
                //ES_Timer_InitTimer(Forward_Timer_Petal_Dance, 500);
                //                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED-20);
                //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED -20);
                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
                //Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED - 30);

                //Bosshog_LeftMtrSpeed(-90);
                Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED + 12);

                //printf("TANK TURN SINCE FRONT GOT HIT");
            }


            //            if (ThisEvent.EventType == FLB_PRESSED) {
            //                ES_Timer_InitTimer(Stall_Timer, 5000);
            //                Bosshog_RightMtrSpeed(-100);
            //                Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED + 50);
            //                //printf("TURN LEFT SINCE BACK GOT HIT");
            //
            //            }

            //if (ThisEvent.EventType == ES_TIMEOUT) {
            if (ThisEvent.EventType == FLB_PRESSED) {
                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS); // restarts timer for stall detection
                Bosshog_RightMtrSpeed(-100);
                Bosshog_LeftMtrSpeed(0);
                //Bosshog_LeftMtrSpeed(0);


                //printf("Timed Tank Turn");
            }

            //            if (ThisEvent.EventType == TAPE_ALIGNED) {
            //                nextState = Stop;
            //                makeTransition = TRUE;
            //                }
            if (ThisEvent.EventType == SPIN_AROUND) {
                nextState = UnstuckReverse;
                printf("Detected STALL going to UNSTUCKREVERSE\r\n");
                makeTransition = TRUE;
                ES_Timer_InitTimer(Unstuck_Timer, 1000);


                //                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED - 15 /*30*/);
                //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);

                Bosshog_RightMtrSpeed(0);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);


            }



            if (ThisEvent.EventType == HI_IM_LOST) {
                printf("HI IM LOST timer went off and I'm in BACKLOCATE\r\n");
                nextState = Evade;
                makeTransition = TRUE;
                //                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS);
            }


            if (ThisEvent.EventType == TRACK_WIRE_DETECTED) {

                nextState = Stop; //Validate;
                makeTransition = TRUE;
            }
            if (ThisEvent.EventType == BB_TAPE_BLACK) {
                Bosshog_RightMtrSpeed(100);
                Bosshog_LeftMtrSpeed(0);
                nextState = WallHug; //Validate; //
                //                    Bosshog_RightMtrSpeed(0);
                //                    Bosshog_LeftMtrSpeed(0);
                printf("GOING TO WALLHUG State \r\n");
                ES_Timer_InitTimer(Stall_Timer, 5000);
                //ES_Timer_InitTimer(Timer_For_Lost, TIMER_LOST_TICKS);            //dead bot timer
                makeTransition = TRUE;
            }



            break;


        case UnstuckReverse:
            if (ThisEvent.EventType == ES_TIMEOUT) {

                Bosshog_RightMtrSpeed(100);
                Bosshog_LeftMtrSpeed(0);
            }


            if (ThisEvent.EventType == FLB_PRESSED) {

                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS); // restarts timer for stall detection



                Bosshog_RightMtrSpeed(-100);
                Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED + 40);
                nextState = BackLocate;
                makeTransition = TRUE;
            }

            if (ThisEvent.EventType == BLB_PRESSED) {
                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS); // restarts timer for stall detection
                //ES_Timer_InitTimer(Forward_Timer_Petal_Dance, 500); // starts duration for Tank Turn
                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
                //Bosshog_LeftMtrSpeed(-90);
                Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED + 30);

                printf("TURN LEFT SINCE BACK GOT HIT");

                nextState = BackLocate;
                makeTransition = TRUE;

            }
            if (ThisEvent.EventType == HI_IM_LOST) {
                printf("HI IM LOST timer went off and I'm in BACKLOCATE\r\n");
                nextState = Evade;
                makeTransition = TRUE;
                //                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS);
            }
            if (ThisEvent.EventType == BB_TAPE_BLACK) {
                Bosshog_RightMtrSpeed(100);
                Bosshog_LeftMtrSpeed(0);
                nextState = WallHug; //Validate; //
                //                    Bosshog_RightMtrSpeed(0);
                //                    Bosshog_LeftMtrSpeed(0);
                printf("GOING TO WALLHUG State \r\n");
                ES_Timer_InitTimer(Stall_Timer, 5000);
                //ES_Timer_InitTimer(Timer_For_Lost, TIMER_LOST_TICKS);            //dead bot timer
                makeTransition = TRUE;
            }

            //INSTEAD OF HANDLING THE DEADBOT TIMER WE WANT TO RESET IT
            //ES_Timer_InitTimer(Timer_For_Lost, TIMER_LOST_TICKS);
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
                printf(" going to  DEPOSITINIT - BACKING UP \r\n");
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
                //                ES_Timer_InitTimer(Timer_For_Align, TIMER_ALIGN_TICKS);

            }
            break;

        case Stop:
            Bosshog_RightMtrSpeed(0);
            Bosshog_LeftMtrSpeed(0);
            break;

        case DepositInit: // in first state, replace this with correct names
            //Drive Backward
            //            printf("IN DEPOSITINIT - BACKING UP \r\n");
            //??????? Somehow this went straight
            Bosshog_RightMtrSpeed(-BACK_RIGHT_MOTOR_SPEED + 15);
            Bosshog_LeftMtrSpeed(-BACK_LEFT_MOTOR_SPEED + 15 - 6); // -10 // + 20 for backwards

            ////while backing up, if the back left bumper gets press (reset timer), turn left until the front gets press and go backwards 
            //            if (ThisEvent.EventType == BLB_PRESSED) {
            //                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
            //                Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED);
            //                ES_Timer_InitTimer(Timer_For_Align, TIMER_ALIGN_TICKS);
            //
            //            }
            //            if (ThisEvent.EventType == FLB_PRESSED) {
            //                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
            //                Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED);
            //                ES_Timer_InitTimer(Timer_For_Align, TIMER_ALIGN_TICKS);

            //  }

            //if (ThisEvent.EventType == WALL_EDGE) {
            //if (ThisEvent.EventType == DEADBOT) {
            if (ThisEvent.EventType == TB_TAPE_BLACK) {
                //nextState = ForwardAlign;
                //ES_Timer_InitTimer(Timer_For_Align, TIMER_ALIGN_TICKS);

                //nextState = Stop;
                nextState = Scan;

                printf("going to DEPOSIT -> ForwardAlign\r\n");
                makeTransition = TRUE;

                //                Bosshog_RightMtrSpeed(0);
                //                Bosshog_LeftMtrSpeed(0);



            }
            //            //0.75 seconds of backing up
            //            if (ThisEvent.EventType == ALIGNING_TIMER) {
            //                nextState = Scan;
            ////                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED - 0);
            ////                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 0);
            //                //go forward and align with side
            //                //                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
            //                //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            //                makeTransition = TRUE;

            //            }
            //
            //            if (ThisEvent.EventType == SB_RELEASED) {
            //                //slight turn left
            //                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
            //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 10);
            //            }
            //            if (ThisEvent.EventType == SB_PRESSED) {
            //                //slight turn right
            //                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED - 10);
            //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            //            }

            //Transitions
            //            switch (BosshogReadTopRightTape()) {
            //                case TAPE_BLACK:
            //                    nextState = TLT_and_TRT_One_For_Deposit;
            //                    makeTransition = TRUE;
            //                    break;
            //
            //                default: // all unhandled events pass the event back up to the next level
            //                    break;
            //            }

            break;

            //exit out of top hsm when 5 timer second is over

        case ForwardAlign:
            //            printf("DEPOSIT -> ForwardAlign\r\n");
            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED /* -5*/);
            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED + 5);
            //0.75 seconds of backing up
            if (ThisEvent.EventType == ALIGNING_TIMER) {
                //nextState = Stop;
                nextState = Scan;
                //                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED - 0);
                //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 0);
                //go forward and align with side
                //                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
                //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
                makeTransition = TRUE;

                //                Bosshog_RightMtrSpeed(0);
                //                Bosshog_LeftMtrSpeed(0);
            }
            break;

        case Scan:
            printf("DEPOSIT -> Scan\r\n");
            //values to use if we use forward align
            //            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED + 5 - 15);
            //            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 15);
            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED - 15);
            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED + 3 /*+ 5*/ - 15);

            //            //go forward and align with side
            //            if (ThisEvent.EventType == ES_TIMEOUT) {
            //                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED - 10);
            //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 10);
            //            }
            //
            //            if (ThisEvent.EventType == WALL_EDGE) {
            //                nextState = DepositEdge;
            //                makeTransition = TRUE;
            //
            //            }
            if (ThisEvent.EventType == TAPE_ALIGNED) {
                nextState = Dispense;
                makeTransition = TRUE;
                ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS);

            }
            //            if (ThisEvent.EventType == FLB_PRESSED) {
            //                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED - 10);
            //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 5);
            //                ES_Timer_InitTimer(Unstuck_Timer, 500);
            //            }


            break;

            //        case DepositEdge:
            //            Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
            //            Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED - 5);
            //            if (ThisEvent.EventType == TAPE_ALIGNED) {
            //                nextState = Dispense;
            //                makeTransition = TRUE;
            //                ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS);
            //
            //            }
            //            break;

        case Dispense:
            //Turn motor off
            printf("Dispense\r\n");
            Bosshog_RightMtrSpeed(0);
            Bosshog_LeftMtrSpeed(0);
            BosshogSetServo(LAUNCH);

            if (ThisEvent.EventType == FIVE_SEC_TIMER) {
                BosshogSetServo(LOAD);
                nextState = Wiggle;
                makeTransition = TRUE;
                //ES_Timer_InitTimer(Timer_For_Align, TIMER_ALIGN_TICKS);
                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS);

                ES_Timer_InitTimer(Jiggle_Timer, 500);
                //                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED + 15);
                //                Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED + 15);

            }
            //Relocate Sensor
            //exits out of the subhsm as makeTransition is false 
            //and no other cases are being handled. Top level auto sends it to find next state
            break;


        case Wiggle:
            printf("Wiggle \r\n");
            if (!setDir) {
                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED + 5);
                Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED + 5);
            } else {
                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED - 5);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 5);
            }
            if (ThisEvent.EventType == ES_TIMEOUT) {
                ES_Timer_InitTimer(Jiggle_Timer, 500);
                setDir ^= 1;
            }

            if (ThisEvent.EventType == SPIN_AROUND) {

                Bosshog_RightMtrSpeed(0);
                Bosshog_LeftMtrSpeed(0);

                //                ThisEvent.EventType = DEPOSITEXIT;
                nextState = DepositExit; //Reload; //DepositExit;
                setDir = 0;
                makeTransition = TRUE;
                ES_Timer_InitTimer(Timer_For_Align, TIMER_ALIGN_TICKS);
                Bosshog_RightMtrSpeed(0);
                Bosshog_LeftMtrSpeed(0);

            }


            break;

            //        case Reload:
            //            //            Bosshog_RightMtrSpeed(0);
            //            //            Bosshog_LeftMtrSpeed(0);
            //            if (ThisEvent.EventType == ALIGNING_TIMER) {
            //                BosshogSetServo(LOAD);
            //
            //                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
            //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            //
            //                ES_Timer_InitTimer(Forward_Timer_Petal_Dance, 100);
            //
            //                nextState = DepositExit;
            //                makeTransition = TRUE;
            //                //                ThisEvent.EventType = DEPOSITEXIT;
            //            }
            //
            //
            //            break;


        case DepositExit:

            //            if (ThisEvent.EventType == ES_TIMEOUT) {
            //                Bosshog_RightMtrSpeed(0);
            //                Bosshog_LeftMtrSpeed(0);
            //
            //
            //                ThisEvent.EventType = DEPOSITEXIT;
            //                //                ThisEvent.EventType = DEPOSITEXIT;
            //            }

            Bosshog_RightMtrSpeed(0);
            Bosshog_LeftMtrSpeed(0);
            if (ThisEvent.EventType == ALIGNING_TIMER) {
                BosshogSetServo(LOAD);

                ThisEvent.EventType = DEPOSITEXIT;
            }
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
                //Bosshog_RightMtrSpeed(100);
                //Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 20);
                nextState = Spin;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
                //ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS);

            }
            break;

        case Spin: // in the first state, replace this with correct names
            //printf("BEACON VALUE:  %d   \r\n", BosshogReadBeacon());


            printf("In Spin (WallHug Inverse) State \r\n");
            //            if (n == 1) {
            //                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
            //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            //                n = 0;
            //            }

            //            if (ThisEvent.EventType == FLB_PRESSED) {
            if (ThisEvent.EventType == ES_TIMEOUT) {

                Bosshog_RightMtrSpeed(-100);
                Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED + 50);
                //ES_Timer_InitTimer(Stall_Timer, 4000);
                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS);
                //                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED-20);
                //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED -20);

                printf("Backpetaling and FRONT GOT HIT");
            }
            //            if (ThisEvent.EventType == FRB_PRESSED) {
            //                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
            //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            //                printf("TANK TURN SINCE FRONT GOT HIT");
            //            }

            if (ThisEvent.EventType == BLB_PRESSED) {
                //ES_Timer_InitTimer(Stall_Timer, 4000);
                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS); //stall detection timer
                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
                Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED);
                ES_Timer_InitTimer(Forward_Timer_Petal_Dance, 400); // duration timer
                printf("BackPetaling\r\n");

            }
            //            if (ThisEvent.EventType == TAPE_ALIGNED) {
            //                nextState = Stop;
            //                makeTransition = TRUE;
            //                }
            if (ThisEvent.EventType == SPIN_AROUND) {
                nextState = EvadeTower;
                makeTransition = TRUE;
                ES_Timer_InitTimer(Unstuck_Timer, 1000);


                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 20);


            }
            //if (ThisEvent.EventType == TRACK_WIRE_DETECTED) {

            break;

        case EvadeTower:
            //go forward and slightly left

            if (ThisEvent.EventType == ES_TIMEOUT) {

                Bosshog_RightMtrSpeed(-100);
                Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED);
            }


            if (ThisEvent.EventType == FLB_PRESSED) {
                //ES_Timer_InitTimer(Stall_Timer, 4000);
                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS);
                Bosshog_RightMtrSpeed(-100);
                Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED + 50);

                //                 Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
                //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
                printf("TANK TURN SINCE FRONT GOT HIT");

                nextState = Spin;
                makeTransition = TRUE;
            }

            if (ThisEvent.EventType == BLB_PRESSED) {
                ES_Timer_InitTimer(Forward_Timer_Petal_Dance, 400);
                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS);
                Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
                Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED - 20);
                printf("TURN LEFT SINCE BACK GOT HIT");

                nextState = Spin;
                makeTransition = TRUE;

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
                Bosshog_RightMtrSpeed(100);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 50);
                printf("going to SpinOTHERWay (WallHug Inverse) State \r\n");
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case SpinOtherWay: // in the first state, replace this with correct names

            //printf("In SpinOTHERWay (WallHug Inverse) State \r\n");
            //            if (n == 1) {
            //                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
            //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            //                n = 0;
            //            }

            //            if (ThisEvent.EventType == FLB_PRESSED) {
            if (ThisEvent.EventType == ES_TIMEOUT) {

                Bosshog_RightMtrSpeed(100);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED - 50);
                //ES_Timer_InitTimer(Stall_Timer, 4000);
                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS);
                //                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED-20);
                //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED -20);

                //printf("Backpetaling and FRONT GOT HIT");
            }
            //            if (ThisEvent.EventType == FRB_PRESSED) {
            //                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
            //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
            //                printf("TANK TURN SINCE FRONT GOT HIT");
            //            }

            if (ThisEvent.EventType == FLB_PRESSED) {
                printf("FLB PRESSED in FindNextInverse\r\n");
                //ES_Timer_InitTimer(Stall_Timer, 4000);
                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS); //stall detection timer
                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);
                ES_Timer_InitTimer(Forward_Timer_Petal_Dance, 400); // duration timer

            }
            //            if (ThisEvent.EventType == TAPE_ALIGNED) {
            //                nextState = Stop;
            //                makeTransition = TRUE;
            //                }
            if (ThisEvent.EventType == SPIN_AROUND) {
                nextState = EvadeOtherWay;
                makeTransition = TRUE;
                ES_Timer_InitTimer(Unstuck_Timer, 1000);


                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
                Bosshog_LeftMtrSpeed(0);


            }




            //            //Spin backward, towards right
            //            Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
            //            Bosshog_LeftMtrSpeed(-LEFT_MOTOR_SPEED - 10);
            //
            //            //Transitions
            //            switch (ThisEvent.EventType) {
            //                case BRB_PRESSED:
            //                    nextState = EvadeOtherWay;
            //                    makeTransition = TRUE;
            //
            //                    //start timer
            //                    ES_Timer_InitTimer(Five_Second_Timer, TIMER_1_TICKS);
            //
            //                    break;
            //
            //                default: // all unhandled events pass the event back up to the next level
            //                    break;
            //            }

            break;

        case EvadeOtherWay: //unstuck



            if (ThisEvent.EventType == ES_TIMEOUT) {

                Bosshog_RightMtrSpeed(100);
                Bosshog_LeftMtrSpeed(60);
            }


            if (ThisEvent.EventType == BLB_PRESSED) {
                //ES_Timer_InitTimer(Stall_Timer, 4000);
                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS);
                Bosshog_RightMtrSpeed(100);
                Bosshog_LeftMtrSpeed(0);
                printf("TURN LEFT SINCE BACK GOT HIT");

                //                 Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
                //                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED);

                nextState = SpinOtherWay;
                makeTransition = TRUE;
            }

            if (ThisEvent.EventType == FLB_PRESSED) {
                ES_Timer_InitTimer(Forward_Timer_Petal_Dance, 400);
                ES_Timer_InitTimer(Timer_For_180, TIMER_180_SPIN_TICKS);
                Bosshog_RightMtrSpeed(-RIGHT_MOTOR_SPEED);
                Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED + 20);
                printf("TANK TURN SINCE FRONT GOT HIT");

                nextState = SpinOtherWay;
                makeTransition = TRUE;

            }



            //            //go forward and slightly right
            //            Bosshog_RightMtrSpeed(RIGHT_MOTOR_SPEED);
            //            Bosshog_LeftMtrSpeed(LEFT_MOTOR_SPEED + 10);
            //
            //            //Transitions
            //            switch (ThisEvent.EventType) {
            //                case FIVE_SEC_TIMER:
            //                    nextState = SpinOtherWay;
            //                    makeTransition = TRUE;
            //
            //                    break;
            //
            //                default: // all unhandled events pass the event back up to the next level
            //                    break;
            //            }
            //
            //            break;
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

ES_Event Run_ForwardNext_SubHSM(ES_Event ThisEvent) {
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
