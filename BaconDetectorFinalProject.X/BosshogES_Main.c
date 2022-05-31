#include <BOARD.h>
#include <xc.h>
#include <stdio.h>
#include "ES_Configure.h"
#include "ES_Framework.h"
#include "bosshog.h"

void main(void) {
    ES_Return_t ErrorType;

    BOARD_Init();
    Bosshog_Init();

    printf("Starting ES Framework Template\r\n");
    printf("using the 2nd Generation Events & Services Framework\r\n");

  //  printf("testing beacon detector\r\n");
    while (1) {
        Bosshog_RightMtrSpeed(85);
        Bosshog_LeftMtrSpeed(85);
        unsigned int RawBeacon = BosshogReadTrackWire(0);
       // printf("AD: %d\r\n", RawBeacon);
//        if (RawBeacon > BEACON_HIGH) {
//                    printf("AD: %d\r\n", RawBeacon);
//            printf("BEACON HIGH\r\n");
//        }
        
    }

    // Your hardware initialization function calls go here

    // now initialize the Events and Services Framework and start it running
    ErrorType = ES_Initialize();
    if (ErrorType == Success) {
        ErrorType = ES_Run();

    }
    //if we got to here, there was an error
    switch (ErrorType) {
        case FailedPointer:
            printf("Failed on NULL pointer");
            break;
        case FailedInit:
            printf("Failed Initialization");
            break;
        default:
            printf("Other Failure: %d", ErrorType);
            break;
    }
    for (;;)
        ;

};

/*------------------------------- Footnotes -------------------------------*/
/*------------------------------ End of file ------------------------------*/
