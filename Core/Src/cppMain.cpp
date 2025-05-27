/*
 * main.cpp
 *
 *  Created on: May 26, 2025
 *      Author: haruki
 */
#include "cppMain.h"
#include "SimpleFOC.h"

// BLDC motor & driver instance
BLDCMotor motor(11);
// BLDCDriver3PWM driver = BLDCDriver3PWM(11, 10, 9, 8); // mini v1.0
BLDCDriver3PWM driver(9, 10, 11, 12); // mini v1.1

// encoder instance
Encoder encoder(2, 3, 500);
// Interrupt routine intialisation
// channel A and B callbacks
void doA(){
	encoder.handleA();
}
void doB(){
	encoder.handleB();
}
void doMotor(char* cmd) {
	//command.motor(&motor, cmd);
}

void cppInit()
{
	  // if SimpleFOCMini is stacked in arduino headers
	  // on pins 12,11,10,9,8
	  // pin 12 is used as ground
	  //pinMode(12,OUTPUT);
	  //pinMode(12,LOW);

	  encoder.init();
	  encoder.enableInterrupts(doA, doB);

	  // link the motor to the sensor
	  motor.linkSensor(&encoder);

	  // driver config
	// power supply voltage [V]
	driver.voltage_power_supply = 12;
	driver.init();
	// link the motor and the driver
	motor.linkDriver(&driver);

}
