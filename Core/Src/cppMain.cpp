/*
 * main.cpp
 *
 *  Created on: May 26, 2025
 *      Author: haruki
 */

#include "SimpleFOC.h"


void cppInit()
{
// BLDC motor & driver instance
BLDCMotor motor = BLDCMotor(11);
// BLDCDriver3PWM driver = BLDCDriver3PWM(11, 10, 9, 8); // mini v1.0
BLDCDriver3PWM driver = BLDCDriver3PWM(9, 10, 11, 12); // mini v1.1
}
