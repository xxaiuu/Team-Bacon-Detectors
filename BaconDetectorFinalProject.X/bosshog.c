/*
 * File:   bosshog.c
 * Author: mdunne, elkaim
 *
 * Created on December 15, 2011, 12:59 PM
 * Modified to remove PLIB on June 29, 2021
 */

#include <bosshog.h>
#include <BOARD.h>
#include <xc.h>
#include "IO_Ports.h"
#include "RC_Servo.h"

#include <pwm.h>
#include <serial.h>
#include <AD.h>

/*******************************************************************************
 * PRIVATE #DEFINES                                                            *
 ******************************************************************************/
//motors
#define LEFT_DIR_LAT LATBbits.LATB3                   //PORTV04_LAT
#define LEFT_DIR_INV_LAT LATBbits.LATB2               //PORTV03_LAT
#define RIGHT_DIR_LAT LATEbits.LATE5                  //PORTY11_LAT
#define RIGHT_DIR_INV_LAT LATEbits.LATE6              //PORTY09_LAT
#define LEFT_PWM PWM_PORTY10
#define RIGHT_PWM PWM_PORTY12

//bumper bits
#define FRONT_LEFT_BUMPER_BIT _RB8                      //PORTV07_BIT
#define FRONT_RIGHT_BUMPER_BIT _RD9                     //PORTY08_BIT
#define REAR_RIGHT_BUMPER_BIT _RD8                      //PORTZ08_BIT
#define REAR_LEFT_BUMPER_BIT _RB10                      //PORTW04_BIT
#define SIDE_BUMPER_BIT PORTV08_BIT
  
 //motors
#define LEFT_DIR_TRIS _TRISB3                     //PORTV04_TRIS
#define LEFT_DIR_INV_TRIS _TRISB2                 //PORTV03_TRIS
#define RIGHT_DIR_TRIS _TRISE5                    //PORTY11_TRIS
#define RIGHT_DIR_INV_TRIS _TRISE6                //PORTY09_TRIS

//bumper tris
#define FRONT_LEFT_BUMPER_TRIS _TRISB8
#define FRONT_RIGHT_BUMPER_TRIS _TRISD9
#define REAR_RIGHT_BUMPER_TRIS _TRISD8
#define REAR_LEFT_BUMPER_TRIS _TRISB10
#define SIDE_BUMPER_TRIS PORTV08_TRIS

//tape sensor pins
#define CENTER_TAPESENSOR_TRIS PORTZ03_TRIS
#define LEFT_TAPESENSOR_TRIS PORTZ04_TRIS
#define RIGHT_TAPESENSOR_TRIS PORTZ05_TRIS
#define BACK_TAPESENSOR_TRIS PORTZ06_TRIS
#define TOPLEFT_TAPESENSOR_TRIS PORTZ07_TRIS
#define TOPRIGHT_TAPESENSOR_TRIS PORTZ09_TRIS
#define TOPCENTER_TAPESENSOR_TRIS PORTZ10_TRIS



#define CENTER_TAPESENSOR_BIT PORTZ03_BIT
#define LEFT_TAPESENSOR_BIT PORTZ04_BIT
#define RIGHT_TAPESENSOR_BIT PORTZ05_BIT
#define BACK_TAPESENSOR_BIT PORTZ06_BIT
#define TOPLEFT_TAPESENSOR_BIT PORTZ07_BIT
#define TOPRIGHT_TAPESENSOR_BIT PORTZ09_BIT
#define TOPCENTER_TAPESENSOR_BIT PORTZ10_BIT

// Servo for launching mechanism
#define RCSERVO_PIN RC_PORTW07

//Track Wire Detectors
#define TRACKWIRE_1 AD_PORTV5
#define TRACKWIRE_2 AD_PORTV6
#define TRACKWIRE_HIGH 600
#define TRACKWIRE_LOW 400

//Beacon Detector
#define BEACON_TRIS PORTW05_TRIS
#define BEACON_BIT PORTW05_BIT


#define BOSSHOG_BAT_VOLTAGE BAT_VOLTAGE





/*******************************************************************************
 * PUBLIC FUNCTIONS                                                           *
 ******************************************************************************/

/**
 * @Function Bosshog_Init(void)
 * @param None.
 * @return None.
 * @brief  Performs all the initialization necessary for the Bosshog. this includes initializing 
 * the PWM module, the A/D converter, the data directions on some pins, and 
 * setting the initial motor directions.
 * @note  None.
 * @author Max Dunne, 2012.01.06 */
void Bosshog_Init(void)
{

    //set the control pins for the motors
    PWM_Init();
    PWM_SetFrequency(1000);
    PWM_AddPins(LEFT_PWM | RIGHT_PWM);

    LEFT_DIR_TRIS = 0;
    LEFT_DIR_INV_TRIS = 0;
    RIGHT_DIR_TRIS = 0;
    RIGHT_DIR_INV_TRIS = 0;
    LEFT_DIR_LAT = 0;
    LEFT_DIR_INV_LAT = ~LEFT_DIR_LAT;
    RIGHT_DIR_LAT = 0;
    RIGHT_DIR_INV_LAT = ~RIGHT_DIR_LAT;

    
    //set up the bumper switches
    FRONT_LEFT_BUMPER_TRIS = 1;
    FRONT_RIGHT_BUMPER_TRIS = 1;
    REAR_RIGHT_BUMPER_TRIS = 1;
    REAR_LEFT_BUMPER_TRIS = 1;
    SIDE_BUMPER_TRIS = 1;
    
    //set up TAPE sensors
    CENTER_TAPESENSOR_TRIS = 1;
    LEFT_TAPESENSOR_TRIS = 1;
    RIGHT_TAPESENSOR_TRIS = 1;
    BACK_TAPESENSOR_TRIS = 1;
    TOPLEFT_TAPESENSOR_TRIS = 1;
    TOPRIGHT_TAPESENSOR_TRIS = 1;
    TOPCENTER_TAPESENSOR_TRIS = 1;
    
    //RCServo INIT
    RC_Init();
    RC_AddPins(RCSERVO_PIN);
    
    
    //Beacon INIT
    BEACON_TRIS = 1;
    
    //set up the light bank

//    uint8_t CurPin;
//    for (CurPin = 0; CurPin < NUMLEDS; CurPin++) {
//        LED_SetPinOutput(CurPin);
//        LED_Off(CurPin);
//    }
    //while (1);

    //Initialize the light sensor
    AD_Init();
    //    printf("Current pins: %d\n",AD_ActivePins());
    //    printf("Add Result: %d\n",AD_AddPins(LIGHT_SENSOR));
    //    while(1);
    AD_AddPins(AD_PORTV5 | AD_PORTV6);
    

    //enable interrupts
}

/**
 * @Function Bosshog_LeftMtrSpeed(char newSpeed)
 * @param newSpeed - A value between -100 and 100 which is the new speed
 * @param of the motor. 0 stops the motor. A negative value is reverse.
 * @return SUCCESS or ERROR
 * @brief  This function is used to set the speed and direction of the left motor.
 * @author Max Dunne, 2012.01.06 */
char Bosshog_LeftMtrSpeed(char newSpeed)
{
    if ((newSpeed < -BOSSHOG_MAX_SPEED) || (newSpeed > BOSSHOG_MAX_SPEED)) {
        return (ERROR);
    }
    newSpeed = -newSpeed;
  
    if (newSpeed < 0) {
        LEFT_DIR_LAT = 0;
        newSpeed = newSpeed * (-1); // set speed to a positive value
    } else {
        LEFT_DIR_LAT = 1;
    }
    LEFT_DIR_INV_LAT = ~(LEFT_DIR_LAT);
    if (PWM_SetDutyCycle(LEFT_PWM, newSpeed * (MAX_PWM / BOSSHOG_MAX_SPEED)) == ERROR) {
        //printf("ERROR: setting channel 1 speed!\n");
        return (ERROR);
    }
    return (SUCCESS);
}

/**
 * @Function Bosshog_RightMtrSpeed(char newSpeed)
 * @param newSpeed - A value between -100 and 100 which is the new speed
 * @param of the motor. 0 stops the motor. A negative value is reverse.
 * @return SUCCESS or ERROR
 * @brief  This function is used to set the speed and direction of the left motor.
 * @author Max Dunne, 2012.01.06 */
char Bosshog_RightMtrSpeed(char newSpeed)
{
    if ((newSpeed < -BOSSHOG_MAX_SPEED) || (newSpeed > BOSSHOG_MAX_SPEED)) {
        return (ERROR);
    }
    if (newSpeed < 0) {
        RIGHT_DIR_LAT = 0;
        newSpeed = newSpeed * (-1); // set speed to a positive value
    } else {
        RIGHT_DIR_LAT = 1;
    }
    RIGHT_DIR_INV_LAT = ~(RIGHT_DIR_LAT);
    if (PWM_SetDutyCycle(RIGHT_PWM, newSpeed * (MAX_PWM / BOSSHOG_MAX_SPEED)) == ERROR) {
        //puts("\aERROR: setting channel 1 speed!\n");
        return (ERROR);
    }
    return (SUCCESS);
}

/**
 * @Function Bosshog_LightLevel(void)
 * @param None.
 * @return a 10-bit value corresponding to the amount of light received.
 * @brief  Returns the current light level. A higher value means less light is detected.
 * @author Max Dunne, 2012.01.06 */
//unsigned int Bosshog_LightLevel(void)
//{
//    return AD_ReadADPin(LIGHT_SENSOR);
//}

/**
 * @Function Bosshog_BatteryVoltage(void)
 * @param None.
 * @return a 10-bit value corresponding to the current voltage of the Bosshog
 * @brief  returns a 10:1 scaled value of the Bosshog battery level
 * @author Max Dunne, 2013.07.12 */
unsigned int Bosshog_BatteryVoltage(void)
{
    return AD_ReadADPin(BOSSHOG_BAT_VOLTAGE);
}


/**
 * reading Tape Sensor Values
 * @return 
 */

uint8_t BosshogReadCenterTape(void){
    return CENTER_TAPESENSOR_BIT;
}

uint8_t BosshogReadLeftTape(void){
    return LEFT_TAPESENSOR_BIT;
}

uint8_t BosshogReadRightTape(void){
    return RIGHT_TAPESENSOR_BIT;
}

uint8_t BosshogReadBackTape(void){
    return BACK_TAPESENSOR_BIT;
}

uint8_t BosshogReadTopRightTape(void){
    return TOPRIGHT_TAPESENSOR_BIT;
}

uint8_t BosshogReadTopLeftTape(void){
    return TOPLEFT_TAPESENSOR_BIT;
}

uint8_t BosshogReadTopCenterTape(void){
    return TOPCENTER_TAPESENSOR_BIT;
}

/**
 * Function to set Servo Position
 * newSpeed in range [1000, 2000]
 * @return 
 */
void BosshogSetServo(char newSpeed){
    
    if ( newSpeed < 1000) newSpeed = 1000; 
    if ( newSpeed > 2000) newSpeed = 2000; 
    
    RC_SetPulseTime(RCSERVO_PIN, newSpeed);
    
}

/**
 * Function to read value of Track Wire
 * read TrackWire_1, num = 0
 * read TrackWire_2, num != 0 
 * @return 2 - HIGH
 *         1 - LOW
 *         0 - NULL (deadzone, remain unchanged)
 */
int BosshogReadTrackWire(char num){
    unsigned int ADReading = 0;
    if(!num){
        //read TrackWire_1
        if (AD_IsNewDataReady()){
            ADReading = AD_ReadADPin(TRACKWIRE_1);
        }
    }else if(num){
        //read TrackWire_2
        if (AD_IsNewDataReady()){
            ADReading = AD_ReadADPin(TRACKWIRE_2);
        }
    }
    
    //Hysteresis
    if (ADReading > TRACKWIRE_HIGH) return 2;
    if (ADReading < TRACKWIRE_LOW) return 1;
    return 0;
    
}

/**
 * Function to read Beacon Detector
 * @return 
 */
uint8_t BosshogReadBeacon(void){
    return BEACON_BIT;
}



/**
 * @Function Bosshog_ReadFrontLeftBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the front left bumper
 * @author Max Dunne, 2012.01.06 */
unsigned char Bosshog_ReadFrontLeftBumper(void)
{
    return !FRONT_LEFT_BUMPER_BIT;
}

/**
 * @Function Bosshog_ReadFrontRightBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the front right bumper
 * @author Max Dunne, 2012.01.06 */
unsigned char Bosshog_ReadFrontRightBumper(void)
{
    return !FRONT_RIGHT_BUMPER_BIT;
}

/**
 * @Function Bosshog_ReadRearLeftBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the rear left bumper
 * @author Max Dunne, 2012.01.06 */
unsigned char Bosshog_ReadRearLeftBumper(void)
{
    return !REAR_LEFT_BUMPER_BIT;
}

/**
 * @Function Bosshog_ReadRearRightBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the rear right bumper
 * @author Max Dunne, 2012.01.06 */
unsigned char Bosshog_ReadRearRightBumper(void)
{
    return !REAR_RIGHT_BUMPER_BIT;
}

unsigned char Bosshog_ReadSideBumper(void)
{
    return !SIDE_BUMPER_BIT;
}

/**
 * @Function Bosshog_ReadBumpers(void)
 * @param None.
 * @return 4-bit value representing all four bumpers in following order: front left,front right, rear left, rear right
 * @brief  Returns the state of all 4 bumpers
 * @author Max Dunne, 2012.01.06 */
unsigned char Bosshog_ReadBumpers(void)
{
    //unsigned char bump_state;
    //bump_state = (!HALL_FRONT_LEFT + ((!HALL_FRONT_RIGHT) << 1)+((!HALL_REAR_LEFT) << 2)+((!HALL_REAR_RIGHT) << 3));
    return (!FRONT_LEFT_BUMPER_BIT + ((!FRONT_RIGHT_BUMPER_BIT) << 1)+((!REAR_LEFT_BUMPER_BIT) << 2)+((!REAR_RIGHT_BUMPER_BIT) << 3));
}
//
///**
// * @Function Bosshog_LEDSSet( unsigned char pattern)
// * @param pattern - sets LEDs on (1) or off (0) as in the pattern.
// * @return SUCCESS or ERROR
// * @brief  Forces the LEDs in (bank) to on (1) or off (0) to match the pattern.
// * @author Gabriel Hugh Elkaim, 2011.12.25 01:16 Max Dunne 2015.09.18 */
//char Bosshog_LEDSSet(uint16_t pattern)
//{
//    char i;
//    for (i = 0; i < NUMLEDS; i++) {
//        if (pattern & (1 << i)) {
//            LED_On(i);
//        } else {
//            LED_Off(i);
//        }
//    }
//    return SUCCESS;
//}
//
///**
// * @Function Bosshog_LEDSGet(void)
// * @return uint16_t: ERROR or state of BANK
// * @author Max Dunne, 203.10.21 01:16 2015.09.18 */
//uint16_t Bosshog_LEDSGet(void)
//{
//    uint16_t LEDStatus = 0;
//    int8_t i;
//    for (i = (NUMLEDS - 1); i >= 0; i--) {
//        LEDStatus |= !LED_Get(i);
//        LEDStatus <<= 1;
//        //        printf("%d\t",i);
//    }
//    LEDStatus >>= 1;
//    return LEDStatus;
//    return 0;
//}
//
///**
// * @Function Bosshog_BarGraph(uint8_t Number)
// * @param Number - value to light between 0 and 12 leds
// * @return SUCCESS or ERROR
// * @brief  allows all leds to be used as a bar graph
// * @author  Max Dunne 2015.09.18 */
//
//
//char Bosshog_BarGraph(uint8_t Number)
//{
//    if (Number > NUMLEDS) {
//        return ERROR;
//    }
//    uint16_t Pattern = 0;
//    uint8_t iterations;
//
//    for (iterations = 0; iterations < Number; iterations++) {
//        Pattern <<= 1;
//        Pattern |= 1;
//    }
//    Bosshog_LEDSSet(Pattern);
//    return SUCCESS;
//}

//#define Bosshog_TEST
#ifdef Bosshog_TEST
#pragma config FPLLIDIV 	= DIV_2		//PLL Input Divider
#pragma config FPLLMUL 		= MUL_20	//PLL Multiplier
#pragma config FPLLODIV 	= DIV_1 	//System PLL Output Clock Divid
#pragma config FNOSC 		= PRIPLL	//Oscillator Selection Bits
#pragma config FSOSCEN 		= OFF		//Secondary Oscillator Enable
#pragma config IESO 		= OFF		//Internal/External Switch O
#pragma config POSCMOD 		= XT		//Primary Oscillator Configuration
#pragma config OSCIOFNC 	= OFF		//CLKO Output Signal Active on the OSCO Pin
#pragma config FPBDIV 		= DIV_2		//Peripheral Clock Divisor
#pragma config FCKSM 		= CSECMD	//Clock Switching and Monitor Selection
#pragma config WDTPS 		= PS1		//Watchdog Timer Postscaler
#pragma config FWDTEN		= OFF		//Watchdog Timer Enable
#pragma config ICESEL		= ICS_PGx2	//ICE/ICD Comm Channel Select
#pragma config PWP 			= OFF		//Program Flash Write Protect
#pragma config BWP 			= OFF		//Boot Flash Write Protect bit
#pragma config CP 			= OFF		//Code Protect

#include <stdio.h>

//#define WANDER_MODE
#define WANDER_SAMPLE_RATE 100

#define FLEFT_BUMP_MASK (1)
#define FRIGHT_BUMP_MASK (1<<1)
#define RLEFT_BUMP_MASK (1<<2)
#define RRIGHT_BUMP_MASK (1<<3)

#define DELAY(x)    for (wait = 0; wait <= x; wait++) {asm("nop");}
#define A_BIT       18300
#define A_BIT_MORE  36600
#define YET_A_BIT_LONGER (A_BIT_MORE<<2)
#define A_LOT       183000
#define NUM_TIMES_REPEAT_LED 5
#define MOTOR_TIME (A_LOT<<2)

#define LOW_BAT 263
#define HIGH_BAT 310



#include <roach.h>

void FlashLEDBar(uint8_t numtimes);

int main(void)
{
    BOARD_Init();
    Roach_Init();

    unsigned int wait;
    unsigned int i, j;
    unsigned int scaledValue;
    int motorSpeed;
    printf("\r\nWelcome the the ECE118 Roach Test Harness");
    printf("\r\nThis code will allow someone to confirm operational hardware and software of a Roach");
    //  TEST THE LEDS
    for (i = 0; i < NUM_TIMES_REPEAT_LED; i++) {
        for (j = 0; j < NUMLEDS; j++) {
            Roach_LEDSSet(1 << j);
            DELAY(A_BIT_MORE);
        }
        Roach_LEDSSet(0);
        DELAY(A_BIT_MORE);
    }
    Roach_LEDSSet(0x555);
    DELAY(YET_A_BIT_LONGER);
    for (i = 0; i < NUM_TIMES_REPEAT_LED; i++) {
        Roach_LEDSSet(Roach_LEDSGet()^0xFFF); // toggle bits on LED
        DELAY(YET_A_BIT_LONGER);
    }
    Roach_LEDSSet(0);
    printf("\r\nTo test a roach, click a bumper.  Each bumper runs a specific test.");
    printf("\r\n\tFront Left: display the current battery voltage");
    printf("\r\n\tFront Right: Display the Light level live");
    printf("\r\n\tRear Left: Test left motor");
    printf("\r\n\tRear Right: Test right motor");
    while (1) {
        // wait for bumper press
        switch (Roach_ReadBumpers()) {

        case FLEFT_BUMP_MASK: // Battery Voltage live output
            FlashLEDBar(1);
            DELAY(A_LOT);
            scaledValue = Roach_BatteryVoltage();
            printf("\r\nBattery voltage is %d", scaledValue);
            scaledValue -= LOW_BAT;
            scaledValue *= 12;
            scaledValue /= (HIGH_BAT - LOW_BAT);
            Roach_BarGraph(scaledValue);
            DELAY(A_LOT << 2);
            Roach_LEDSSet(0);
            printf("\r\nBattery Level Test Complete");
            DELAY(A_BIT);
            FlashLEDBar(1);
            break;

        case FRIGHT_BUMP_MASK: // Light Sensor live output
            FlashLEDBar(2);
            DELAY(A_LOT);
            for (i = 0; i < A_LOT >> 2; i++) {
                scaledValue = Roach_LightLevel();
                if (i % 10000 == 0) {
                    printf("\r\nCurrent Light Level: %d", scaledValue);
                }
                scaledValue *= 12;
                scaledValue /= 1023;
                Roach_BarGraph(scaledValue);
            }
            printf("\r\nLight Level Test Complete");
            DELAY(A_LOT);
            FlashLEDBar(2);
            break;

        case RLEFT_BUMP_MASK: // Left motor progression
            FlashLEDBar(3);
            motorSpeed = 100;
            DELAY(A_LOT);
            printf("\r\nLeft Motor at %d", motorSpeed);
            Roach_LeftMtrSpeed(motorSpeed);
            Roach_LEDSSet(0b111100000000);
            DELAY(MOTOR_TIME);
            motorSpeed -= 20;
            printf("\r\nLeft Motor at %d", motorSpeed);
            Roach_LeftMtrSpeed(motorSpeed);
            Roach_LEDSSet(0b011100000000);
            DELAY(MOTOR_TIME);
            motorSpeed -= 20;
            printf("\r\nLeft Motor at %d", motorSpeed);
            Roach_LeftMtrSpeed(motorSpeed);
            Roach_LEDSSet(0b001100000000);
            DELAY(MOTOR_TIME);
            motorSpeed -= 20;
            printf("\r\nLeft Motor at %d", motorSpeed);
            Roach_LeftMtrSpeed(motorSpeed);
            Roach_LEDSSet(0b000100000000);
            DELAY(MOTOR_TIME);
            motorSpeed = 0;
            printf("\r\nLeft Motor at %d", motorSpeed);
            Roach_LeftMtrSpeed(motorSpeed);
            Roach_LEDSSet(0);
            DELAY(MOTOR_TIME);
            motorSpeed = -100;
            printf("\r\nLeft Motor at %d", motorSpeed);
            Roach_LeftMtrSpeed(motorSpeed);
            Roach_LEDSSet(0b1111);
            DELAY(MOTOR_TIME);
            motorSpeed += 20;
            printf("\r\nLeft Motor at %d", motorSpeed);
            Roach_LeftMtrSpeed(motorSpeed);
            Roach_LEDSSet(0b0111);
            DELAY(MOTOR_TIME);
            motorSpeed += 20;
            printf("\r\nLeft Motor at %d", motorSpeed);
            Roach_LeftMtrSpeed(motorSpeed);
            Roach_LEDSSet(0b0011);
            DELAY(MOTOR_TIME);
            motorSpeed += 20;
            printf("\r\nLeft Motor at %d", motorSpeed);
            Roach_LeftMtrSpeed(motorSpeed);
            Roach_LEDSSet(0b0001);
            DELAY(MOTOR_TIME);
            motorSpeed = 0;
            printf("\r\nLeft Motor at %d", motorSpeed);
            Roach_LeftMtrSpeed(motorSpeed);
            Roach_LEDSSet(0);
            DELAY(A_LOT);
            printf("\r\nLeft Motor Test Complete");
            FlashLEDBar(3);
            break;

        case RRIGHT_BUMP_MASK:
            FlashLEDBar(4);
            DELAY(A_LOT);
            motorSpeed = 100;
            printf("\r\nRight Motor at %d", motorSpeed);
            Roach_RightMtrSpeed(motorSpeed);
            Roach_LEDSSet(0b111100000000);
            DELAY(MOTOR_TIME);
            motorSpeed -= 20;
            printf("\r\nRight Motor at %d", motorSpeed);
            Roach_RightMtrSpeed(motorSpeed);
            Roach_LEDSSet(0b011100000000);
            DELAY(MOTOR_TIME);
            motorSpeed -= 20;
            printf("\r\nRight Motor at %d", motorSpeed);
            Roach_RightMtrSpeed(motorSpeed);
            Roach_LEDSSet(0b001100000000);
            DELAY(MOTOR_TIME);
            motorSpeed -= 20;
            printf("\r\nRight Motor at %d", motorSpeed);
            Roach_RightMtrSpeed(motorSpeed);
            Roach_LEDSSet(0b000100000000);
            DELAY(MOTOR_TIME);
            motorSpeed = 0;
            printf("\r\nRight Motor at %d", motorSpeed);
            Roach_RightMtrSpeed(motorSpeed);
            Roach_LEDSSet(0);
            DELAY(MOTOR_TIME);
            motorSpeed = -100;
            printf("\r\nRight Motor at %d", motorSpeed);
            Roach_RightMtrSpeed(-100);
            Roach_LEDSSet(0b1111);
            DELAY(MOTOR_TIME);
            motorSpeed += 20;
            printf("\r\nRight Motor at %d", motorSpeed);
            Roach_RightMtrSpeed(motorSpeed);
            Roach_LEDSSet(0b0111);
            DELAY(MOTOR_TIME);
            motorSpeed += 20;
            printf("\r\nRight Motor at %d", motorSpeed);
            Roach_RightMtrSpeed(motorSpeed);
            Roach_LEDSSet(0b0011);
            DELAY(MOTOR_TIME);
            motorSpeed += 20;
            printf("\r\nRight Motor at %d", motorSpeed);
            Roach_RightMtrSpeed(motorSpeed);
            Roach_LEDSSet(0b0001);
            DELAY(MOTOR_TIME);
            motorSpeed = 0;
            printf("\r\nRight Motor at %d", motorSpeed);
            Roach_RightMtrSpeed(motorSpeed);
            Roach_LEDSSet(0);
            DELAY(A_LOT);
            printf("\r\nRight Motor Test Complete");
            FlashLEDBar(4);
            break;
        }
        // Left motor progression
        // right motor progression


    }
    while (1);
}

void FlashLEDBar(uint8_t numtimes)
{
    unsigned int wait, i;
    Roach_LEDSSet(0);
    for (i = 0; i < numtimes; i++) {
        Roach_LEDSSet(0xFFF);
        DELAY(YET_A_BIT_LONGER);
        Roach_LEDSSet(0x000);
        DELAY(YET_A_BIT_LONGER);
    }
}
#endif