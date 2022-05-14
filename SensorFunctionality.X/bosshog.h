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


/*******************************************************************************
 * PUBLIC FUNCTION PROTOTYPES                                                  *
 ******************************************************************************/
#define BUMPER_TRIPPED 1
#define BUMPER_NOT_TRIPPED 0

#define BEACON_PRESENT 1
#define BEACON_ABSENT 0

#define TRACK_WIRE_PRESENT 2
#define TRACK_WIRE_ABSENT 1

#define TAPE_WHITE 0
#define TAPE_BLACK 1

#define BOSSHOG_MAX_SPEED 100 

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
char BosshogLeftMtrSpeed(char newSpeed);

/**
 * @Function Roach_RightMtrSpeed(char newSpeed)
 * @param newSpeed - A value between -100 and 100 which is the new speed
 * @param of the motor. 0 stops the motor. A negative value is reverse.
 * @return SUCCESS or ERROR
 * @brief  This function is used to set the speed and direction of the left motor.
 * @author Max Dunne, 2012.01.06 */
char BosshogRightMtrSpeed(char newSpeed);

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
void BosshogSetServo(int newSpeed);

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
