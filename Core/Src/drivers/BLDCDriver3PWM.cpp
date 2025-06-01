#include "BLDCDriver3PWM.h"
#include "main.h"

BLDCDriver3PWM::BLDCDriver3PWM(int phA, int phB, int phC, GPIOPin *en1, GPIOPin *en2, GPIOPin *en3){
  // Pin initialization

	en1_ = en1;
	en2_ = en2;
	en3_ = en3;
	/*
	enable_a_port = GPIOA;
	enable_b_port = GPIOA;
	enable_c_port = GPIOA;

	enable_a_channel = GPIO_PIN_11;
	*/

	/*
	pwmA = phA;
	pwmB = phB;
	pwmC = phC;

	// enable_pin pin
	enableA_pin = en1;
	enableB_pin = en2;
	enableC_pin = en3;
	 */
	// default power-supply value
	voltage_power_supply = DEF_POWER_SUPPLY;
	voltage_limit = NOT_SET;
	pwm_frequency = NOT_SET;

}

// enable motor driver
void  BLDCDriver3PWM::enable(){

    // enable_pin the driver - if enable_pin pin available
    if ( en1_ != NULL ) HAL_GPIO_WritePin(en1_->port, en1_->channel, GPIO_PIN_SET);
    if ( en2_ != NULL ) HAL_GPIO_WritePin(en2_->port, en2_->channel, GPIO_PIN_SET);
    if ( en3_ != NULL ) HAL_GPIO_WritePin(en3_->port, en3_->channel, GPIO_PIN_SET);
    // set zero to PWM
    setPwm(0,0,0);
}

// disable motor driver
void BLDCDriver3PWM::disable()
{
	// set zero to PWM
	setPwm(0, 0, 0);
	// disable the driver - if enable_pin pin available
	// enable_pin the driver - if enable_pin pin available
	if ( en1_ != NULL ) HAL_GPIO_WritePin(en1_->port, en1_->channel, GPIO_PIN_RESET);
	if ( en2_ != NULL ) HAL_GPIO_WritePin(en2_->port, en2_->channel, GPIO_PIN_RESET);
	if ( en3_ != NULL ) HAL_GPIO_WritePin(en3_->port, en3_->channel, GPIO_PIN_RESET);

}

// init hardware pins
int BLDCDriver3PWM::init() {
  // PWM pins
	HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1);
	HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_2);
	HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_3);
	HAL_GPIO_WritePin(GPIOA, GPIO_PIN_11, GPIO_PIN_RESET);

	if(!_isset(voltage_limit) || voltage_limit > voltage_power_supply){
		voltage_limit =  voltage_power_supply;
	}

	params = _configure3PWM(pwm_frequency, pwmA, pwmB, pwmC);
	initialized = (params!=SIMPLEFOC_DRIVER_INIT_FAILED);
	return params!=SIMPLEFOC_DRIVER_INIT_FAILED;
		//return 0;
	/*
  pinMode(pwmA, OUTPUT);
  pinMode(pwmB, OUTPUT);
  pinMode(pwmC, OUTPUT);
  if( _isset(enableA_pin)) pinMode(enableA_pin, OUTPUT);
  if( _isset(enableB_pin)) pinMode(enableB_pin, OUTPUT);
  if( _isset(enableC_pin)) pinMode(enableC_pin, OUTPUT);


  // sanity check for the voltage limit configuration
if(!_isset(voltage_limit) || voltage_limit > voltage_power_supply) voltage_limit =  voltage_power_supply;

  // Set the pwm frequency to the pins
  // hardware specific function - depending on driver and mcu
  params = _configure3PWM(pwm_frequency, pwmA, pwmB, pwmC);
  initialized = (params!=SIMPLEFOC_DRIVER_INIT_FAILED);
  return params!=SIMPLEFOC_DRIVER_INIT_FAILED;
  */
}



// Set voltage to the pwm pin
void BLDCDriver3PWM::setPhaseState(PhaseState sa, PhaseState sb, PhaseState sc) {
  // disable if needed
	/*
  if( _isset(enableA_pin) &&  _isset(enableB_pin)  && _isset(enableC_pin) ){
    digitalWrite(enableA_pin, sa == PhaseState::PHASE_ON ? enable_active_high:!enable_active_high);
    digitalWrite(enableB_pin, sb == PhaseState::PHASE_ON ? enable_active_high:!enable_active_high);
    digitalWrite(enableC_pin, sc == PhaseState::PHASE_ON ? enable_active_high:!enable_active_high);
  }
  */
}

// Set voltage to the pwm pin
void BLDCDriver3PWM::setPwm(float Ua, float Ub, float Uc) {

  // limit the voltage in driver
  Ua = _constrain(Ua, 0.0f, voltage_limit);
  Ub = _constrain(Ub, 0.0f, voltage_limit);
  Uc = _constrain(Uc, 0.0f, voltage_limit);
  // calculate duty cycle
  // limited in [0,1]
  dc_a = _constrain(Ua / voltage_power_supply, 0.0f , 1.0f );
  dc_b = _constrain(Ub / voltage_power_supply, 0.0f , 1.0f );
  dc_c = _constrain(Uc / voltage_power_supply, 0.0f , 1.0f );

  // hardware specific writing
  // hardware specific function - depending on driver and mcu
  _writeDutyCycle3PWM(dc_a, dc_b, dc_c, params);
}
