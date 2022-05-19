/*
 * File:   bosshog.h
 * Author: mdunne
 *
 * Created on May 11, 2022, 10:59 AM
 *  
 *
 * Implements basic functionality for BaconDetector robot for sensors and actuators
 *
 * 
 */




#ifndef BOSSHOG_H
#define BOSSHOG_H

#include <BOARD.h>
#include "IO_Ports.h"
#include "bosshog.h"


/*******************************************************************************
 * PUBLIC FUNCTION PROTOTYPES                                                  *
 ******************************************************************************/
#define BUMPER_TRIPPED 1
#define BUMPER_NOT_TRIPPED 0

#define BEACON_PRESENT 0
#define BEACON_ABSENT 1

#define TRACK_WIRE_PRESENT 2
#define TRACK_WIRE_ABSENT 1

#define TAPE_WHITE 0
#define TAPE_BLACK 1

#define BOSSHOG_MAX_SPEED 100 


//motors
#define LEFT_DIR_LAT LATBbits.LATB3                   //PORTV04_LAT  IN1
#define LEFT_DIR_INV_LAT LATBbits.LATB2               //PORTV03_LAT  IN2
#define RIGHT_DIR_LAT LATEbits.LATE5                  //PORTY11_LAT  IN3
#define RIGHT_DIR_INV_LAT LATEbits.LATE6              //PORTY09_LAT  IN4
#define LEFT_PWM PWM_PORTY10                          //ENA
#define RIGHT_PWM PWM_PORTY12                         //ENB 

//bumper bits
#define FRONT_LEFT_BUMPER_BIT _RB8                      //PORTV07_BIT
#define FRONT_RIGHT_BUMPER_BIT _RD9                     //PORTY08_BIT
#define REAR_RIGHT_BUMPER_BIT _RD8                      //PORTZ08_BIT
#define REAR_LEFT_BUMPER_BIT _RB10                      //PORTW04_BIT
#define SIDE_BUMPER_BIT PORTX09_BIT
#define TOP_FRONT_LEFT_BUMPER_BIT PORTX11_BIT
#define TOP_FRONT_RIGHT_BUMPER_BIT PORTX08_BIT
#define TOP_BACK_LEFT_BUMPER_BIT PORTX12_BIT
#define TOP_BACK_RIGHT_BUMPER_BIT PORTX10_BIT
  
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
#define SIDE_BUMPER_TRIS PORTX09_TRIS
#define TOP_FRONT_LEFT_BUMPER_TRIS PORTX11_TRIS
#define TOP_FRONT_RIGHT_BUMPER_TRIS PORTX08_TRIS
#define TOP_BACK_LEFT_BUMPER_TRIS PORTX12_TRIS
#define TOP_BACK_RIGHT_BUMPER_TRIS PORTX10_TRIS

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
#define TRACKWIRE_HIGH 700
#define TRACKWIRE_LOW 100

//Beacon Detector
#define BEACON_TRIS PORTW05_TRIS
#define BEACON_BIT PORTW05_BIT


#define BOSSHOG_BAT_VOLTAGE BAT_VOLTAGE

/**
 * @Function BOSSHOG_Init(void)
 * @param None.
 * @return None.
 * @brief  Performs all the initialization necessary for the bosshog. this includes initializing
 * the PWM module, the A/D converter, the data directions on some pins, and
 * setting the initial motor directions.
 * @note  None.
 * @author Max Dunne, 2012.01.06 */
void Bosshog_Init(void);


/**
 * @Function Roach_LeftMtrSpeed(char newSpeed)
 * @param newSpeed - A value between -100 and 100 which is the new speed
 * @param of the motor. 0 stops the motor. A negative value is reverse.
 * @return SUCCESS or ERROR
 * @brief  This function is used to set the speed and direction of the left motor.
 * @author Max Dunne, 2012.01.06 */
char Bosshog_LeftMtrSpeed(char newSpeed);

/**
 * @Function Roach_RightMtrSpeed(char newSpeed)
 * @param newSpeed - A value between -100 and 100 which is the new speed
 * @param of the motor. 0 stops the motor. A negative value is reverse.
 * @return SUCCESS or ERROR
 * @brief  This function is used to set the speed and direction of the left motor.
 * @author Max Dunne, 2012.01.06 */
char Bosshog_RightMtrSpeed(char newSpeed);

/**
 * @Function Bosshog_LightLevel(void)
 * @param None.
 * @return a 10-bit value corresponding to the amount of light received.
 * @brief  Returns the current light level. A higher value means less light is detected.
 * @author Max Dunne, 2012.01.06 */
//unsigned int Bosshog_LightLevel(void);

/**
 * reading Tape Sensor Values
 * @return 
 */

uint8_t BosshogReadCenterTape(void);
uint8_t BosshogReadLeftTape(void);
uint8_t BosshogReadRightTape(void);
uint8_t BosshogReadBackTape(void);
uint8_t BosshogReadTopRightTape(void);
uint8_t BosshogReadTopLeftTape(void);
uint8_t BosshogReadTopCenterTape(void);


/**
 * Function to set Servo Position
 * newSpeed in range [1000, 2000]
 * @return 
 */
void BosshogSetServo(int newPos);

/**
 * Function to read value of Track Wire
 * read TrackWire_1, num = 0
 * read TrackWire_2, num != 0 
 * @return 2 - HIGH
 *         1 - LOW
 *         0 - NULL (deadzone, remain unchanged)
 */
uint8_t BosshogReadTrackWire(char num);

/**
 * Function to read Beacon Detector
 * @return 
 */
uint8_t BosshogReadBeacon(void);


/**
 * @Function Bosshog_BatteryVoltage(void)
 * @param None.
 * @return a 10-bit value corresponding to the current voltage of the roach
 * @brief  returns a 10:1 scaled value of the roach battery level
 * @author Max Dunne, 2013.07.12 */
unsigned int Bosshog_BatteryVoltage(void);

/**
 * @Function Bosshog_ReadFrontLeftBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the front left bumper
 * @author Max Dunne, 2012.01.06 */
unsigned char Bosshog_ReadFrontLeftBumper(void);


/**
 * @Function Bosshog_ReadFrontRightBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the front right bumper
 * @author Max Dunne, 2012.01.06 */
unsigned char Bosshog_ReadFrontRightBumper(void);

/**
 * @Function Bosshog_ReadRearLeftBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the rear left bumper
 * @author Max Dunne, 2012.01.06 */
unsigned char Bosshog_ReadRearLeftBumper(void);

/**
 * @Function Bosshog_ReadRearRightBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the rear right bumper
 * @author Max Dunne, 2012.01.06 */
unsigned char Bosshog_ReadRearRightBumper(void);


/**
 * @Function Bosshog_ReadSideBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the rear right bumper
 * @author Max Dunne, 2012.01.06 */
unsigned char Bosshog_ReadSideBumper(void);

/**
 * @Function Bosshog_ReadFrontRightBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the front right bumper
 * @author Max Dunne, 2012.01.06 */
unsigned char Bosshog_ReadTopFrontRightBumper(void);
unsigned char Bosshog_ReadTopFrontLeftBumper(void);
unsigned char Bosshog_ReadTopBackRightBumper(void);
unsigned char Bosshog_ReadTopBackLeftBumper(void);



/**
 * @Function Bosshog_ReadBumpers(void)
 * @param None.
 * @return 4-bit value representing all four bumpers in following order: front left,front right, rear left, rear right
 * @brief  Returns the state of all 4 bumpers
 * @author Max Dunne, 2012.01.06 */
unsigned char Bosshog_ReadBumpers(void);



///**
// * @Function Bosshog_LEDSSet( unsigned char pattern)
// * @param pattern - sets LEDs on (1) or off (0) as in the pattern.
// * @return SUCCESS or ERROR
// * @brief  Forces the LEDs in (bank) to on (1) or off (0) to match the pattern.
// * @author Gabriel Hugh Elkaim, 2011.12.25 01:16 Max Dunne 2015.09.18 */
//char Bosshog_LEDSSet(uint16_t pattern);
//
///**
// * @Function Bosshog_LEDSGet(void)
// * @return uint16_t: ERROR or state of BANK
// * @author Max Dunne, 203.10.21 01:16 2015.09.18 */
//uint16_t Bosshog_LEDSGet(void);
//
///**
// * @Function Bosshog_BarGraph(uint8_t Number)
// * @param Number - value to light between 0 and 12 leds
// * @return SUCCESS or ERROR
// * @brief  allows all leds to be used as a bar graph
// * @author  Max Dunne 2015.09.18 */
//char Bosshog_BarGraph(uint8_t Number);


#endif
