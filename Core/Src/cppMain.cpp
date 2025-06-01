/*
 * main.cpp
 *
 *  Created on: May 26, 2025
 *      Author: haruki
 */
#include "cppMain.h"
#include "SimpleFOC.h"

// BLDC motor & driver instance
//BLDCMotor motor(8, 6.9, 492);
BLDCMotor motor(8);
// BLDCDriver3PWM driver = BLDCDriver3PWM(11, 10, 9, 8); // mini v1.0
BLDCDriver3PWM driver(9, 10, 11, 12); // mini v1.1

// encoder instance
Encoder encoder(2, 3, 75);

static bool motor_processing_flag = false;
float mon_angle = 0;

// Interrupt routine intialisation
// channel A and B callbacks
/*
 void doA(){
 encoder.handleA();
 }
 void doB(){
 encoder.handleB();
 }
 */
void doMotor(char *cmd) {
	//command.motor(&motor, cmd);
}

void cppInit() {
	HAL_TIM_Base_Start_IT(&htim6);
	// if SimpleFOCMini is stacked in arduino headers
	// on pins 12,11,10,9,8
	// pin 12 is used as ground
	//pinMode(12,OUTPUT);
	//pinMode(12,LOW);

	encoder.init();
	//encoder.enableInterrupts(doA, doB);

	// link the motor to the sensor
	motor.linkSensor(&encoder);

	// driver config
	// power supply voltage [V]
	driver.voltage_power_supply = 8;
	driver.init();
	// link the motor and the driver
	motor.linkDriver(&driver);

	// aligning voltage [V]
	motor.voltage_sensor_align = 3;

	// set motion control loop to be used
	//motor.controller = MotionControlType::angle_openloop;
	//motor.controller = MotionControlType::velocity_openloop;
	motor.controller = MotionControlType::velocity;

	// contoller configuration
	// default parameters in defaults.h

	// velocity PI controller parameters
	motor.PID_velocity.P = 0.010f;
	motor.PID_velocity.I = 1.0f;
	motor.PID_velocity.D = 0;
	// default voltage_power_supply
	motor.voltage_limit = 3;
	// jerk control using voltage voltage ramp
	// default value is 300 volts per sec  ~ 0.3V per millisecond
	motor.PID_velocity.output_ramp = 300;

	// velocity low pass filtering time constant
	motor.LPF_velocity.Tf = 0.01f;

	// angle P controller
	motor.P_angle.P = 10;
	//  maximal velocity of the position control
	motor.velocity_limit = 3;

	// initialize motor
	motor.init();
	// align encoder and start FOC
	motor.initFOC();

	HAL_Delay(1000);
}

void cppLoop() {
	// main FOC algorithm function
	// the faster you run this function the better
	// Arduino UNO loop  ~1kHz
	// Bluepill loop ~10kHz
	//motor.loopFOC();

	motor_processing_flag = true;
	HAL_Delay(2000);
	motor.disable();
	while(1){}

	// Motion control function
	// velocity, position or voltage (defined in motor.controller)
	// this function can be run at much lower frequency than loopFOC() function
	// You can also use motor.move() and set the motor.target in the code
	//motor.move(1);

	// function intended to be used with serial plotter to monitor motor variables
	// significantly slowing the execution down!!!!
	// motor.monitor();

	// user communication
}

void cppTimerInterrupt1ms() {
	static float angle = 0;

	motor.absoluteZeroSearchInterruptHandler();

	if(motor_processing_flag == true){
		motor.loopFOC();
		motor.move(10);

		angle += 3.14/5000;
		mon_angle = angle;

	}

}
