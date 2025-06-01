################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Core/Src/drivers/BLDCDriver3PWM.cpp \
../Core/Src/drivers/BLDCDriver6PWM.cpp 

OBJS += \
./Core/Src/drivers/BLDCDriver3PWM.o \
./Core/Src/drivers/BLDCDriver6PWM.o 

CPP_DEPS += \
./Core/Src/drivers/BLDCDriver3PWM.d \
./Core/Src/drivers/BLDCDriver6PWM.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/drivers/%.o Core/Src/drivers/%.su Core/Src/drivers/%.cyclo: ../Core/Src/drivers/%.cpp Core/Src/drivers/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F303x8 -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-drivers

clean-Core-2f-Src-2f-drivers:
	-$(RM) ./Core/Src/drivers/BLDCDriver3PWM.cyclo ./Core/Src/drivers/BLDCDriver3PWM.d ./Core/Src/drivers/BLDCDriver3PWM.o ./Core/Src/drivers/BLDCDriver3PWM.su ./Core/Src/drivers/BLDCDriver6PWM.cyclo ./Core/Src/drivers/BLDCDriver6PWM.d ./Core/Src/drivers/BLDCDriver6PWM.o ./Core/Src/drivers/BLDCDriver6PWM.su

.PHONY: clean-Core-2f-Src-2f-drivers

