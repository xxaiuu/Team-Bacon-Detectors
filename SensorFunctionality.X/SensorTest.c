/*
 * File:   SensorTest.c
 * Author: sindurka
 *
 * Created on May 10, 2022, 4:42 PM
 */


#include "xc.h"
#include "BOARD.h"
#include "timers.h"
#include "IO_Ports.h"
#include <stdio.h>

int main(void) {
    
    BOARD_Init();
    TIMERS_Init();
    
    printf("Starting Test Harness");
    
    //testing tape sensors
    PORTW05_TRIS = 1; //set Y03 as input 
    int prevTape = 1; 
    int currTape; 
    while (1){
        currTape = PORTW05_BIT;
        printf("Y03: %d\r\n", PORTW05_BIT);
        if (prevTape != currTape){
            printf("Tape: %d\r\n", currTape);
            prevTape = currTape; 
        }
        
    }
    return 0;
}
