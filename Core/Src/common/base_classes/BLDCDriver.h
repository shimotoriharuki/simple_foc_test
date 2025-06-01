#ifndef BLDCDRIVER_H
#define BLDCDRIVER_H

//#include "Arduino.h"
#include "FOCDriver.h"
#include "stm32f3xx_hal.h"
#include "../foc_utils.h"

class BLDCDriver: public FOCDriver{
    public:

        float dc_a; //!< currently set duty cycle on phaseA
        float dc_b; //!< currently set duty cycle on phaseB
        float dc_c; //!< currently set duty cycle on phaseC

        GPIOPin enable_1;
        GPIOPin enable_2;
        GPIOPin enable_3;

        /*
        GPIO_TypeDef *enable_a_port;
        GPIO_TypeDef *enable_b_port;
        GPIO_TypeDef *enable_c_port;

        uint16_t enable_a_channel;
        uint16_t enable_b_channel;
        uint16_t enable_c_channel;

*/

        /**
         * Set phase voltages to the hardware
         *
         * @param Ua - phase A voltage
         * @param Ub - phase B voltage
         * @param Uc - phase C voltage
        */
        virtual void setPwm(float Ua, float Ub, float Uc) = 0;

        /**
         * Set phase state, enable/disable
         *
         * @param sc - phase A state : active / disabled ( high impedance )
         * @param sb - phase B state : active / disabled ( high impedance )
         * @param sa - phase C state : active / disabled ( high impedance )
        */
        virtual void setPhaseState(PhaseState sa, PhaseState sb, PhaseState sc) = 0;

        /** driver type getter function */
        virtual DriverType type() override { return DriverType::BLDC; };
};

#endif
