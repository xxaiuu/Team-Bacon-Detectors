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
    
//    //testing tape sensors
//    PORTW05_TRIS = 1; //set W05 as input 
//    int prevTape = 1; 
//    int currTape; 
//    while (1){
//        currTape = PORTW05_BIT;
//        printf("Y03: %d\r\n", PORTW05_BIT);
//        if (prevTape != currTape){
//            printf("Tape: %d\r\n", currTape);
//            prevTape = currTape; 
//        }
//        
//    }
    
    
    //testing pins
    PORTV03_TRIS = 0; //set W05 as input 
     
    while (1){
        
        PORTV03_LAT = 1;
        printf("Y03: %d\r\n", PORTW05_BIT);
        
    }
    
    return 0;
}