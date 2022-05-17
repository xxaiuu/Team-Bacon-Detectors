/*
 * File: EventService.h
 * Author: J. Edward Carryer
 * Modified: Gabriel H Elkaim
 *
 * Event file to set up a simple service to work with the Events and Services
 * Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that this file
 * will need to be modified to fit your exact needs, and most of the names will have
 * to be changed to match your code.
 *
 * This is provided as an example and a good place to start.
 *
 * Created on 23/Oct/2011
 * Updated on 13/Nov/2013
 */

/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "BOARD.h"
#include "AD.h"
#include "ES_Configure.h"
#include "ES_Framework.h"
#include "EventService.h"
#include <stdio.h>
#include "BosshogEventChecker.h"
#include "bosshog.h"
#include "BosshogHSM.h"
/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/

#define BATTERY_DISCONNECT_THRESHOLD 175

/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                    *
 ******************************************************************************/
/* You will need MyPriority and maybe a state variable; you may need others
 * as well. */

//init bumper states
static uint8_t LastFRB = BUMPER_NOT_TRIPPED;
static uint8_t LastFLB = BUMPER_NOT_TRIPPED;
static uint8_t LastBRB = BUMPER_NOT_TRIPPED;
static uint8_t LastBLB = BUMPER_NOT_TRIPPED;
static uint8_t LastSB = BUMPER_NOT_TRIPPED;

//init TrackWire states
static uint8_t LastTrack1 = TRACK_WIRE_ABSENT;
static uint8_t LastTrack2 = TRACK_WIRE_ABSENT;

//init LastTape states
static uint8_t LastBLT = TAPE_WHITE;
static uint8_t LastBCT = TAPE_WHITE;
static uint8_t LastBRT = TAPE_WHITE;
static uint8_t LastBBT = TAPE_WHITE;
static uint8_t LastTLT = TAPE_WHITE;
static uint8_t LastTRT = TAPE_WHITE;
static uint8_t LastTCT = TAPE_WHITE;

static uint8_t MyPriority;

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitEventService(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunEventService function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitEventService(uint8_t Priority)
{
    ES_Event ThisEvent;

    MyPriority = Priority;

    // in here you write your initialization code
    // this includes all hardware and software initialization
    // that needs to occur.
    
    //start timer
    ES_Timer_InitTimer(EVENT_TIMER, 5);

    // post the initial transition event
    ThisEvent.EventType = ES_INIT;
    if (ES_PostToService(MyPriority, ThisEvent) == TRUE) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/**
 * @Function PostEventService(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Remember to rename to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PostEventService(ES_Event ThisEvent)
{
    return ES_PostToService(MyPriority, ThisEvent);
}


uint8_t FRBEvent(void){
    static uint8_t CurrBumper;
    CurrBumper = Bosshog_ReadFrontRightBumper();
    uint8_t WasEvent = FALSE;
    if(CurrBumper != LastFRB && CurrBumper == BUMPER_TRIPPED){
        ES_Event BumperEvent;
        BumperEvent.EventType = FRB_PRESSED;
        BumperEvent.EventParam = (uint16_t) CurrBumper;
#ifndef EVENTCHECKER_TEST
        PostBosshogHSM(BumperEvent);
#else
        SaveEvent(BumperEvent);
#endif  
        WasEvent = TRUE;
    }else if(CurrBumper != LastFRB && CurrBumper == BUMPER_NOT_TRIPPED){
        ES_Event BumperEvent;
        BumperEvent.EventType = FRB_RELEASED;
        BumperEvent.EventParam = (uint16_t) CurrBumper;
        PostBosshogHSM(BumperEvent); 
        WasEvent = TRUE;
    }
    LastFRB = CurrBumper;
    return WasEvent;
}


uint8_t FLBEvent(void){
    static uint8_t CurrBumper;
    CurrBumper = Bosshog_ReadFrontLeftBumper();
    uint8_t WasEvent = FALSE;
    if(CurrBumper != LastFLB && CurrBumper == BUMPER_TRIPPED){
        ES_Event BumperEvent;
        BumperEvent.EventType = FLB_PRESSED;
        BumperEvent.EventParam = (uint16_t) CurrBumper;
#ifndef EVENTCHECKER_TEST
        PostBosshogHSM(BumperEvent);
#else
        SaveEvent(BumperEvent);
#endif  
        WasEvent = TRUE;
    }else if(CurrBumper != LastFLB && CurrBumper == BUMPER_NOT_TRIPPED){
        ES_Event BumperEvent;
        BumperEvent.EventType = FLB_RELEASED;
        BumperEvent.EventParam = (uint16_t) CurrBumper;
        PostBosshogHSM(BumperEvent); 
        WasEvent = TRUE;
    }
    LastFLB = CurrBumper;
    return WasEvent;
}



uint8_t BRBEvent(void){
    static uint8_t CurrBumper;
    CurrBumper = Bosshog_ReadRearRightBumper();
    uint8_t WasEvent = FALSE;
    if(CurrBumper != LastBRB && CurrBumper == BUMPER_TRIPPED){
        ES_Event BumperEvent;
        BumperEvent.EventType = BRB_PRESSED;
        BumperEvent.EventParam = (uint16_t) CurrBumper;
#ifndef EVENTCHECKER_TEST
        PostBosshogHSM(BumperEvent);
#else
        SaveEvent(BumperEvent);
#endif  
        WasEvent = TRUE;
    }else if(CurrBumper != LastBRB && CurrBumper == BUMPER_NOT_TRIPPED){
        ES_Event BumperEvent;
        BumperEvent.EventType = BRB_RELEASED;
        BumperEvent.EventParam = (uint16_t) CurrBumper;
        PostBosshogHSM(BumperEvent); 
        WasEvent = TRUE;
    }
    LastBRB = CurrBumper;
    return WasEvent;
}


uint8_t BLBEvent(void){
    static uint8_t CurrBumper;
    CurrBumper = Bosshog_ReadRearLeftBumper();
    uint8_t WasEvent = FALSE;
    if(CurrBumper != LastBLB && CurrBumper == BUMPER_TRIPPED){
        ES_Event BumperEvent;
        BumperEvent.EventType = BLB_PRESSED;
        BumperEvent.EventParam = (uint16_t) CurrBumper;
#ifndef EVENTCHECKER_TEST
        PostBosshogHSM(BumperEvent);
#else
        SaveEvent(BumperEvent);
#endif  
        WasEvent = TRUE;
    }else if(CurrBumper != LastBLB && CurrBumper == BUMPER_NOT_TRIPPED){
        ES_Event BumperEvent;
        BumperEvent.EventType = BLB_RELEASED;
        BumperEvent.EventParam = (uint16_t) CurrBumper;
        PostBosshogHSM(BumperEvent); 
        WasEvent = TRUE;
    }
    LastBLB = CurrBumper;
    return WasEvent;
}


uint8_t SBEvent(void){
    static uint8_t CurrBumper;
    CurrBumper = Bosshog_ReadSideBumper();
    uint8_t WasEvent = FALSE;
    if(CurrBumper != LastSB && CurrBumper == BUMPER_TRIPPED){
        ES_Event BumperEvent;
        BumperEvent.EventType = SB_PRESSED;
        BumperEvent.EventParam = (uint16_t) CurrBumper;
#ifndef EVENTCHECKER_TEST
        PostBosshogHSM(BumperEvent);
#else
        SaveEvent(BumperEvent);
#endif  
        WasEvent = TRUE;
    }else if(CurrBumper != LastSB && CurrBumper == BUMPER_NOT_TRIPPED){
        ES_Event BumperEvent;
        BumperEvent.EventType = SB_RELEASED;
        BumperEvent.EventParam = (uint16_t) CurrBumper;
        PostBosshogHSM(BumperEvent); 
        WasEvent = TRUE;
    }
    LastSB = CurrBumper;
    return WasEvent;
}

uint8_t TrackWireEvent(void){
    int numTracks = 0;
    uint8_t CurrTrack1 = BosshogReadTrackWire(0);
    uint8_t CurrTrack2 = BosshogReadTrackWire(1);
    uint8_t WasEvent = FALSE;
    if(CurrTrack1 != LastTrack1 && CurrTrack1 == TRACK_WIRE_PRESENT){
        printf("TRACKWIRE 1 EVENT\r\n");
        numTracks++;
    }
    if(CurrTrack2 != LastTrack2 && CurrTrack2 == TRACK_WIRE_PRESENT){
        numTracks++;
    }
    if (numTracks){
        ES_Event TrackEvent;
        TrackEvent.EventType = TRACK_WIRE_DETECTED;
        TrackEvent.EventParam = (uint16_t) numTracks;
#ifndef EVENTCHECKER_TEST
        PostBosshogHSM(TrackEvent);
#else
        SaveEvent(BumperEvent);
#endif  
        WasEvent = TRUE;
    }
        
    
    LastTrack1 = CurrTrack1;
    LastTrack2 = CurrTrack2;
    return WasEvent;
}

uint8_t BLTEvent (void){
    static uint8_t CurrTape;
    CurrTape = BosshogReadLeftTape();
    uint8_t WasEvent = FALSE;
    if(CurrTape != LastBLT && CurrTape == TAPE_BLACK){
        ES_Event TapeEvent;
        TapeEvent.EventType = BL_TAPE_BLACK;
        TapeEvent.EventParam = (uint16_t) CurrTape;
#ifndef EVENTCHECKER_TEST
        PostBosshogHSM(TapeEvent);
#else
        SaveEvent(BumperEvent);
#endif  
        WasEvent = TRUE;
    }
    LastBLT = CurrTape;
    return WasEvent;
}

uint8_t BCTEvent (void){
    static uint8_t CurrTape;
    CurrTape = BosshogReadCenterTape();
    uint8_t WasEvent = FALSE;
    if(CurrTape != LastBCT && CurrTape == TAPE_BLACK){
        ES_Event TapeEvent;
        TapeEvent.EventType = BC_TAPE_BLACK;
        TapeEvent.EventParam = (uint16_t) CurrTape;
#ifndef EVENTCHECKER_TEST
        //printf("BCTEvent\r\n");
        PostBosshogHSM(TapeEvent);
#else
        SaveEvent(BumperEvent);
#endif  
        WasEvent = TRUE;
    }
    LastBCT = CurrTape;
    return WasEvent;
}

uint8_t BRTEvent (void){
    static uint8_t CurrTape;
    CurrTape = BosshogReadRightTape();
    uint8_t WasEvent = FALSE;
    if(CurrTape != LastBRT && CurrTape == TAPE_BLACK){
        ES_Event TapeEvent;
        TapeEvent.EventType = BR_TAPE_BLACK;
        TapeEvent.EventParam = (uint16_t) CurrTape;
#ifndef EVENTCHECKER_TEST
        PostBosshogHSM(TapeEvent);
#else
        SaveEvent(BumperEvent);
#endif  
        WasEvent = TRUE;
    }
    LastBRT = CurrTape;
    return WasEvent;
}


uint8_t BBTEvent (void){
    static uint8_t CurrTape;
    CurrTape = BosshogReadBackTape();
    uint8_t WasEvent = FALSE;
    if(CurrTape != LastBBT && CurrTape == TAPE_BLACK){
        ES_Event TapeEvent;
        TapeEvent.EventType = BB_TAPE_BLACK;
        TapeEvent.EventParam = (uint16_t) CurrTape;
#ifndef EVENTCHECKER_TEST
        PostBosshogHSM(TapeEvent);
#else
        SaveEvent(BumperEvent);
#endif  
        WasEvent = TRUE;
    }
    LastBBT = CurrTape;
    return WasEvent;
}


uint8_t TLTEvent (void){
    static uint8_t CurrTape;
    CurrTape = BosshogReadTopLeftTape();
    uint8_t WasEvent = FALSE;
    if(CurrTape != LastTLT && CurrTape == TAPE_BLACK){
        ES_Event TapeEvent;
        TapeEvent.EventType = TL_TAPE_BLACK;
        TapeEvent.EventParam = (uint16_t) CurrTape;
#ifndef EVENTCHECKER_TEST
        PostBosshogHSM(TapeEvent);
#else
        SaveEvent(BumperEvent);
#endif  
        WasEvent = TRUE;
    }else if(CurrTape != LastTLT && CurrTape == TAPE_WHITE){
        ES_Event TapeEvent;
        TapeEvent.EventType = TL_TAPE_WHITE;
        TapeEvent.EventParam = (uint16_t) CurrTape;
        PostBosshogHSM(TapeEvent); 
        WasEvent = TRUE;
    }
    LastTLT = CurrTape;
    return WasEvent;
}


uint8_t TRTEvent (void){
    static uint8_t CurrTape;
    CurrTape = BosshogReadTopRightTape();
    uint8_t WasEvent = FALSE;
    if(CurrTape != LastTRT && CurrTape == TAPE_BLACK){
        ES_Event TapeEvent;
        TapeEvent.EventType = TR_TAPE_BLACK;
        TapeEvent.EventParam = (uint16_t) CurrTape;
#ifndef EVENTCHECKER_TEST
        PostBosshogHSM(TapeEvent);
#else
        SaveEvent(BumperEvent);
#endif  
        WasEvent = TRUE;
    }else if(CurrTape != LastTRT && CurrTape == TAPE_WHITE){
        ES_Event TapeEvent;
        TapeEvent.EventType = TR_TAPE_WHITE;
        TapeEvent.EventParam = (uint16_t) CurrTape;
        PostBosshogHSM(TapeEvent); 
        WasEvent = TRUE;
    }
    LastTRT = CurrTape;
    return WasEvent;
}

uint8_t TCTEvent (void){
    static uint8_t CurrTape;
    CurrTape = BosshogReadTopCenterTape();
    uint8_t WasEvent = FALSE;
    if(CurrTape != LastTCT && CurrTape == TAPE_BLACK){
        ES_Event TapeEvent;
        TapeEvent.EventType = TC_TAPE_BLACK;
        TapeEvent.EventParam = (uint16_t) CurrTape;
#ifndef EVENTCHECKER_TEST
        PostBosshogHSM(TapeEvent);
#else
        SaveEvent(BumperEvent);
#endif  
        WasEvent = TRUE;
    }else if(CurrTape != LastTCT && CurrTape == TAPE_WHITE){
        ES_Event TapeEvent;
        TapeEvent.EventType = TC_TAPE_WHITE;
        TapeEvent.EventParam = (uint16_t) CurrTape;
        PostBosshogHSM(TapeEvent); 
        WasEvent = TRUE;
    }
    LastTCT = CurrTape;
    return WasEvent;
}


/**
 * @Function RunEventService(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the service,
 *        as this is called any time a new event is passed to the event queue. 
 * @note Remember to rename to something appropriate.
 *       Returns ES_NO_EVENT if the event have been "consumed." 
 * @author J. Edward Carryer, 2011.10.23 19:25 */
ES_Event RunEventService(ES_Event ThisEvent)
{
    //printf("RUNEVENTSERVICE\r\n");
    ES_Event ReturnEvent;
    ReturnEvent.EventType = ES_NO_EVENT; // assume no errors

    /********************************************
     in here you write your service code
     *******************************************/
    static ES_EventTyp_t lastEvent = BATTERY_DISCONNECTED;
    ES_EventTyp_t curEvent;
    uint16_t batVoltage = AD_ReadADPin(BAT_VOLTAGE); // read the battery voltage

    switch (ThisEvent.EventType) {
    case ES_INIT:
        // No hardware initialization or single time setups, those
        // go in the init function above.
        //
        // This section is used to reset service for some reason
        break;

    case ES_TIMEOUT:
        FRBEvent();
        FLBEvent();
        BRBEvent();
        BLBEvent();
        SBEvent();
        TrackWireEvent();
        BLTEvent();
        BCTEvent();
        BRTEvent();
        BBTEvent();
        TLTEvent();
        TRTEvent();
        TCTEvent();
        //reset ES TIMER
        ES_Timer_InitTimer(EVENT_TIMER,5);
//        if (batVoltage > BATTERY_DISCONNECT_THRESHOLD) { // is battery connected?
//            curEvent = BATTERY_CONNECTED;
//        } else {
//            curEvent = BATTERY_DISCONNECTED;
//        }
//        if (curEvent != lastEvent) { // check for change from last time
//            ReturnEvent.EventType = curEvent;
//            ReturnEvent.EventParam = batVoltage;
//            lastEvent = curEvent; // update history
//#ifndef SIMPLESERVICE_TEST           // keep this as is for test harness
//            //PostGenericService(ReturnEvent);
//#else
//            PostEventService(ReturnEvent);
//#endif   
//        }
        break;
    case ES_TIMERACTIVE:
        break;
#ifdef SIMPLESERVICE_TEST     // keep this as is for test harness      
    default:
        printf("\r\nEvent: %s\tParam: 0x%X",
                EventNames[ThisEvent.EventType], ThisEvent.EventParam);
        break;
#endif
    }

    return ReturnEvent;
}

/*******************************************************************************
 * PRIVATE FUNCTIONs                                                           *
 ******************************************************************************/

