#ifndef BLDCDriver3PWM_h
#define BLDCDriver3PWM_h

#include "../common/base_classes/BLDCDriver.h"
#include "../common/foc_utils.h"
//#include "../common/time_utils.h"
#include "../common/defaults.h"
#include "hardware_api.h"


/**
 3 pwm bldc driver class
*/
class BLDCDriver3PWM: public BLDCDriver
{
  public:
    /**
      BLDCDriver class constructor
      @param phA A phase pwm pin
      @param phB B phase pwm pin
      @param phC C phase pwm pin
      @param en1 enable pin (optional input)
      @param en2 enable pin (optional input)
      @param en3 enable pin (optional input)
    */
    BLDCDriver3PWM(TimerPin *phA, TimerPin *phB, TimerPin *phC, GPIOPin *en1 = NULL, GPIOPin *en2 = NULL, GPIOPin *en3 = NULL);
    
    /**  Motor hardware init function */
  	int init() override;
    /** Motor disable function */
  	void disable() override;
    /** Motor enable function */
    void enable() override;

    // hardware variables
  	int pwmA; //!< phase A pwm pin number
  	int pwmB; //!< phase B pwm pin number
  	int pwmC; //!< phase C pwm pin number
    int enableA_pin; //!< enable pin number
    int enableB_pin; //!< enable pin number
    int enableC_pin; //!< enable pin number

    TimerPin *phA_;
    TimerPin *phB_;
    TimerPin *phC_;

    GPIOPin *en1_;
    GPIOPin *en2_;
    GPIOPin *en3_;


    /** 
     * Set phase voltages to the hardware 
     * 
     * @param Ua - phase A voltage
     * @param Ub - phase B voltage
     * @param Uc - phase C voltage
    */
    void setPwm(float Ua, float Ub, float Uc) override;

    /** 
     * Set phase voltages to the hardware
     * > Only possible is the driver has separate enable pins for all phases!  
     * 
     * @param sc - phase A state : active / disabled ( high impedance )
     * @param sb - phase B state : active / disabled ( high impedance )
     * @param sa - phase C state : active / disabled ( high impedance )
    */
    virtual void setPhaseState(PhaseState sa, PhaseState sb, PhaseState sc) override;
  private:
};

#endif
