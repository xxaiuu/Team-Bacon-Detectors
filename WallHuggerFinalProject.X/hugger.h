/*
 * File:   hugger.h
 * Author: mdunne
 *
 * Created on May 11, 2022, 10:59 AM
 *  
 *
 * Implements basic functionality for WallHugger robot for sensors and actuators
 *
 * 
 */




#ifndef HUGGER_H
#define HUGGER_H

#include <BOARD.h>


/*******************************************************************************
 * PUBLIC FUNCTION PROTOTYPES                                                  *
 ******************************************************************************/
#define BUMPER_TRIPPED 1
#define BUMPER_NOT_TRIPPED 0

#define HUGGER_MAX_SPEED 100 

/**
 * @Function HUGGER_Init(void)
 * @param None.
 * @return None.
 * @brief  Performs all the initialization necessary for the hugger. this includes initializing
 * the PWM module, the A/D converter, the data directions on some pins, and
 * setting the initial motor directions.
 * @note  None.
 * @author Max Dunne, 2012.01.06 */
void Hugger_Init(void);


/**
 * @Function Roach_LeftMtrSpeed(char newSpeed)
 * @param newSpeed - A value between -100 and 100 which is the new speed
 * @param of the motor. 0 stops the motor. A negative value is reverse.
 * @return SUCCESS or ERROR
 * @brief  This function is used to set the speed and direction of the left motor.
 * @author Max Dunne, 2012.01.06 */
char HuggerLeftMtrSpeed(char newSpeed);

/**
 * @Function Roach_RightMtrSpeed(char newSpeed)
 * @param newSpeed - A value between -100 and 100 which is the new speed
 * @param of the motor. 0 stops the motor. A negative value is reverse.
 * @return SUCCESS or ERROR
 * @brief  This function is used to set the speed and direction of the left motor.
 * @author Max Dunne, 2012.01.06 */
char HuggerRightMtrSpeed(char newSpeed);

/**
 * @Function Hugger_LightLevel(void)
 * @param None.
 * @return a 10-bit value corresponding to the amount of light received.
 * @brief  Returns the current light level. A higher value means less light is detected.
 * @author Max Dunne, 2012.01.06 */
//unsigned int Hugger_LightLevel(void);

/**
 * reading Tape Sensor Values
 * @return 
 */

uint8_t HuggerReadCenterTape(void);
uint8_t HuggerReadLeftTape(void);
uint8_t HuggerReadRightTape(void);
uint8_t HuggerReadBackTape(void);
uint8_t HuggerReadTopRightTape(void);
uint8_t HuggerReadTopLeftTape(void);

/**
 * Function to set Servo Position
 * newSpeed in range [1000, 2000]
 * @return 
 */
void HuggerSetServo(char newSpeed);

/**
 * Function to read value of Track Wire
 *
 * @return 
 */
uint8_t HuggerReadTrackWire(char num);

/**
 * Function to read Beacon Detector
 * @return 
 */
uint8_t HuggerReadBeacon(void);


/**
 * @Function Hugger_BatteryVoltage(void)
 * @param None.
 * @return a 10-bit value corresponding to the current voltage of the roach
 * @brief  returns a 10:1 scaled value of the roach battery level
 * @author Max Dunne, 2013.07.12 */
unsigned int Hugger_BatteryVoltage(void);

/**
 * @Function Hugger_ReadFrontLeftBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the front left bumper
 * @author Max Dunne, 2012.01.06 */
unsigned char Hugger_ReadFrontLeftBumper(void);


/**
 * @Function Hugger_ReadFrontRightBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the front right bumper
 * @author Max Dunne, 2012.01.06 */
unsigned char Hugger_ReadFrontRightBumper(void);

/**
 * @Function Hugger_ReadRearLeftBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the rear left bumper
 * @author Max Dunne, 2012.01.06 */
unsigned char Hugger_ReadRearLeftBumper(void);

/**
 * @Function Hugger_ReadRearRightBumper(void)
 * @param None.
 * @return BUMPER_TRIPPED or BUMPER_NOT_TRIPPED
 * @brief  Returns the state of the rear right bumper
 * @author Max Dunne, 2012.01.06 */
unsigned char Hugger_ReadRearRightBumper(void);

/**
 * @Function Hugger_ReadBumpers(void)
 * @param None.
 * @return 4-bit value representing all four bumpers in following order: front left,front right, rear left, rear right
 * @brief  Returns the state of all 4 bumpers
 * @author Max Dunne, 2012.01.06 */
unsigned char Hugger_ReadBumpers(void);



///**
// * @Function Hugger_LEDSSet( unsigned char pattern)
// * @param pattern - sets LEDs on (1) or off (0) as in the pattern.
// * @return SUCCESS or ERROR
// * @brief  Forces the LEDs in (bank) to on (1) or off (0) to match the pattern.
// * @author Gabriel Hugh Elkaim, 2011.12.25 01:16 Max Dunne 2015.09.18 */
//char Hugger_LEDSSet(uint16_t pattern);
//
///**
// * @Function Hugger_LEDSGet(void)
// * @return uint16_t: ERROR or state of BANK
// * @author Max Dunne, 203.10.21 01:16 2015.09.18 */
//uint16_t Hugger_LEDSGet(void);
//
///**
// * @Function Hugger_BarGraph(uint8_t Number)
// * @param Number - value to light between 0 and 12 leds
// * @return SUCCESS or ERROR
// * @brief  allows all leds to be used as a bar graph
// * @author  Max Dunne 2015.09.18 */
//char Hugger_BarGraph(uint8_t Number);


#endif
