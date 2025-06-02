/*
 * main.cpp
 *
 *  Created on: May 26, 2025
 *      Author: haruki
 */
#include "cppMain.h"
#include "SimpleFOC.h"

// BLDC motor & driver instance
BLDCMotor motor(8);

GPIOPin enable_1 = {.port = GPIOA, .channel = GPIO_PIN_11};
GPIOPin *p_enable_1 = &enable_1;
TimerPin phase_a = {.htim = &htim1, .channel = TIM_CHANNEL_1};
TimerPin *p_phase_a= &phase_a;
TimerPin phase_b = {.htim = &htim1, .channel = TIM_CHANNEL_2};
TimerPin *p_phase_b= &phase_b;
TimerPin phase_c = {.htim = &htim1, .channel = TIM_CHANNEL_3};
TimerPin *p_phase_c= &phase_c;
BLDCDriver3PWM driver(p_phase_a, p_phase_b, p_phase_c, p_enable_1); // mini v1.1

// encoder instance
TimerPin encoder_pin = {.htim = &htim2, .channel = TIM_CHANNEL_ALL};
TimerPin *p_encoder_pin= &encoder_pin;
Encoder encoder(p_encoder_pin, TIM2, 75);

static float target_angle;
static bool motor_processing_flag = false;
float mon_angle = 0;


void cppInit() {
	HAL_TIM_Base_Start_IT(&htim6);

	encoder.init();

	// link the motor to the sensor
	motor.linkSensor(&encoder);

	// driver config
	// power supply voltage [V]
	driver.voltage_power_supply = 8;
	driver.init();
	// link the motor and the driver
	motor.linkDriver(&driver);

	// aligning voltage [V]
	motor.voltage_sensor_align = 1;

	// set motion control loop to be used
	//motor.controller = MotionControlType::angle_openloop;
	//motor.controller = MotionControlType::velocity_openloop;
	//motor.controller = MotionControlType::velocity;
	motor.controller = MotionControlType::angle;

	// contoller configuration
	// default parameters in defaults.h

	// velocity PI controller parameters
	motor.PID_velocity.P = 0.001f;
	motor.PID_velocity.I = 1.0f;
	motor.PID_velocity.D = 0;
	// default voltage_power_supply
	motor.voltage_limit = 8;
	// jerk control using voltage voltage ramp
	// default value is 300 volts per sec  ~ 0.3V per millisecond
	motor.PID_velocity.output_ramp = 300;

	// velocity low pass filtering time constant
	motor.LPF_velocity.Tf = 0.01f;

	// angle P controller
	motor.P_angle.P = 30;
	//  maximal velocity of the position control
	motor.velocity_limit = 50;

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
	motor.startMotorControl();

	for(uint8_t i = 0; i < 10; i++){
		target_angle = 6.28;
		HAL_Delay(1000);
		target_angle = 0;
		HAL_Delay(1000);
		target_angle = -6.28;
		HAL_Delay(1000);
		target_angle = 0;
		HAL_Delay(1000);
	}

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

	//motor.absoluteZeroSearchInterruptHandler();

	motor.setTarget(target_angle);
	motor.timerInterruptHandler();
	/*
	if(motor_processing_flag == true){
		motor.loopFOC();
		motor.move(target_angle);

		mon_angle = target_angle;

	}
	*/

}
