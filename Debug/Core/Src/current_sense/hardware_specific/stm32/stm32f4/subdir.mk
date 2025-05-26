################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_hal.cpp \
../Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_mcu.cpp \
../Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_utils.cpp 

OBJS += \
./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_hal.o \
./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_mcu.o \
./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_utils.o 

CPP_DEPS += \
./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_hal.d \
./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_mcu.d \
./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/current_sense/hardware_specific/stm32/stm32f4/%.o Core/Src/current_sense/hardware_specific/stm32/stm32f4/%.su Core/Src/current_sense/hardware_specific/stm32/stm32f4/%.cyclo: ../Core/Src/current_sense/hardware_specific/stm32/stm32f4/%.cpp Core/Src/current_sense/hardware_specific/stm32/stm32f4/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F303x8 -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-current_sense-2f-hardware_specific-2f-stm32-2f-stm32f4

clean-Core-2f-Src-2f-current_sense-2f-hardware_specific-2f-stm32-2f-stm32f4:
	-$(RM) ./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_hal.cyclo ./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_hal.d ./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_hal.o ./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_hal.su ./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_mcu.cyclo ./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_mcu.d ./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_mcu.o ./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_mcu.su ./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_utils.cyclo ./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_utils.d ./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_utils.o ./Core/Src/current_sense/hardware_specific/stm32/stm32f4/stm32f4_utils.su

.PHONY: clean-Core-2f-Src-2f-current_sense-2f-hardware_specific-2f-stm32-2f-stm32f4

