/*
 * cppMain.h
 *
 *  Created on: May 27, 2025
 *      Author: haruki
 */

#ifndef INC_CPPMAIN_H_
#define INC_CPPMAIN_H_

#include "stm32f3xx_hal.h"
#include "main.h"

#ifdef __cplusplus
extern "C" {
#endif



void cppInit(void);
void cppExit(uint16_t);
void cppTimerInterrupt1ms(void);
void cppLoop(void);


#ifdef __cplusplus
};
#endif




#endif /* INC_CPPMAIN_H_ */


