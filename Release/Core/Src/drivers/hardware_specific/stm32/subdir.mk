################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Core/Src/drivers/hardware_specific/stm32/stm32_mcu.cpp 

OBJS += \
./Core/Src/drivers/hardware_specific/stm32/stm32_mcu.o 

CPP_DEPS += \
./Core/Src/drivers/hardware_specific/stm32/stm32_mcu.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/drivers/hardware_specific/stm32/%.o Core/Src/drivers/hardware_specific/stm32/%.su Core/Src/drivers/hardware_specific/stm32/%.cyclo: ../Core/Src/drivers/hardware_specific/stm32/%.cpp Core/Src/drivers/hardware_specific/stm32/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F303x8 -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-drivers-2f-hardware_specific-2f-stm32

clean-Core-2f-Src-2f-drivers-2f-hardware_specific-2f-stm32:
	-$(RM) ./Core/Src/drivers/hardware_specific/stm32/stm32_mcu.cyclo ./Core/Src/drivers/hardware_specific/stm32/stm32_mcu.d ./Core/Src/drivers/hardware_specific/stm32/stm32_mcu.o ./Core/Src/drivers/hardware_specific/stm32/stm32_mcu.su

.PHONY: clean-Core-2f-Src-2f-drivers-2f-hardware_specific-2f-stm32

