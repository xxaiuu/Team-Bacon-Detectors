/*
 * File:   PingSensorMain.c
 * Author: sindurka
 *
 * Created on May 6, 2022, 6:48 PM
 */


#include "xc.h"
#include "timers.h"
#include "IO_ports.h"
#include "BOARD.h"
#include "GeneralHeaderFile.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>



int main(void) {
    
    BOARD_Init();
    TIMERS_Init();
    
    
    //configure trigger output pins Y03
    PORTY03_TRIS = 0; //set as output
    PORTY03_LAT = 0; //set initially as low
    //configure trigger output pin Y04
    PORTY04_TRIS = 1; //set as input
    
    printf("In Main\n\r");

    
    int startInputTime = 0, flightTime, startOutputTime; 
    
    while (1){
        //set trigger pin high for 1ms > 10us
        startOutputTime = TIMERS_GetTime();
        //printf("TIMER value: %x\n\r", TIMERS_GetTime());

        while(TIMERS_GetTime() <= startOutputTime + 1){ //1 Tick = 1ms
            PING_TRIGGER_PIN = 1; //set high 
            printf("HIGH\n\r");
        }
        PING_TRIGGER_PIN = 0; //set high 

        //CODE TO WAIT BEFORE NEXT HIGH PULSE
//        while(TIMERS_GetTime() <= startOutputTime + 9){ //1 Tick = 1ms
//            PORTY03_LAT = 0; //set low again
//            //printf("LOW\n\r");
//        }
        
        startInputTime = 0;
        while (1){
            //printf("LISTENING");
            
            if( PING_ECHO_PIN && (startInputTime == 0)){
                //pin went high, get time stamp
                startInputTime = TIMERS_GetTime();
                printf("EH \n\r\t");
            }
            if (!PING_ECHO_PIN && startInputTime){
                //pin went low
                printf("EL \n\r\t");
                flightTime = TIMERS_GetTime() - startInputTime;
                break;
            }
        }
        
        printf("Distance: %d\n\r\t", (flightTime*1000)/148);

    }
    
    return 0;
}
