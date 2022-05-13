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
     
    //PORT V TEST
    PORTV03_TRIS = 0;
    PORTV04_TRIS  = 0;
    PORTV05_TRIS  = 0;
    PORTV06_TRIS  = 0;
    PORTV07_TRIS  = 0;
    PORTV08_TRIS  = 0;

    
    //PORT W TEST
    PORTW03_TRIS = 0;
    PORTW04_TRIS  = 0;
    PORTW05_TRIS  = 0;
    PORTW06_TRIS  = 0;
    PORTW07_TRIS  = 0;
    PORTW08_TRIS = 0;
    
    
    //PORT X TEST
    PORTX03_TRIS  = 0;                  
    PORTX04_TRIS  = 0;
    PORTX05_TRIS  = 0;
    PORTX06_TRIS  = 0;
    PORTX07_TRIS  = 0;
    PORTX08_TRIS  = 0;
    PORTX09_TRIS  = 0;
    PORTX10_TRIS  = 0;
    PORTX11_TRIS  = 0;
    PORTX12_TRIS  = 0;
    
    
    //PORT Y TEST
    PORTY03_TRIS = 0;
    PORTY04_TRIS = 0;
    PORTY05_TRIS = 0;
    PORTY06_TRIS = 0;
    PORTY07_TRIS = 0;
    PORTY08_TRIS = 0;
    PORTY09_TRIS = 0;
    PORTY10_TRIS = 0;
    PORTY11_TRIS = 0;
    PORTY12_TRIS = 0;
    
    //PORT Z TEST
    PORTZ03_TRIS = 0;
    PORTZ04_TRIS = 0;
    PORTZ05_TRIS = 0;
    PORTZ06_TRIS = 0;
    PORTZ07_TRIS = 0;
    PORTZ08_TRIS = 0;
    PORTZ09_TRIS = 0;
    PORTZ10_TRIS = 0;
    PORTZ11_TRIS = 0;           //BAD
    PORTZ12_TRIS = 0;           //Bad-ish. Works but low voltage.
    
    
    while (1){
        
        PORTV03_LAT = 1;
        PORTV04_LAT  = 1;
        PORTV05_LAT  = 1;       
        PORTV06_LAT  = 1;
        PORTV07_LAT  = 1;
        PORTV08_LAT  = 1;
        
        
        PORTW03_LAT = 1;
        PORTW04_LAT  = 1;
        PORTW05_LAT  = 1;
        PORTW06_LAT  = 1;
        PORTW07_LAT  = 1;
        PORTW08_LAT = 1;
        
        
        PORTX03_LAT = 1;
        PORTX04_LAT  = 1;
        PORTX05_LAT  = 1;
        PORTX06_LAT  = 1;
        PORTX07_LAT  = 1;
        PORTX08_LAT  = 1;
        PORTX09_LAT  = 1;
        PORTX10_LAT  = 1;
        PORTX11_LAT  = 1;
        PORTX12_LAT  = 1;
        
        
        PORTY03_LAT  = 1;
        PORTY04_LAT  = 1;
        PORTY05_LAT  = 1;
        PORTY06_LAT  = 1;
        PORTY07_LAT  = 1;
        PORTY08_LAT  = 1;
        PORTY09_LAT  = 1;
        PORTY10_LAT  = 1;
        PORTY11_LAT  = 1;
        PORTY12_LAT  = 1;
        
        
        PORTZ03_LAT = 1;
        PORTZ04_LAT = 1;
        PORTZ05_LAT = 1;
        PORTZ06_LAT = 1;
        PORTZ07_LAT = 1;
        PORTZ08_LAT = 1;
        PORTZ09_LAT = 1;
        PORTZ10_LAT = 1;
        PORTZ11_LAT = 1;
        PORTZ12_LAT = 1;
        
    }
    
    return 0;
}
