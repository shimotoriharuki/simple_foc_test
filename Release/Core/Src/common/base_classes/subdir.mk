################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Core/Src/common/base_classes/FOCMotor.cpp \
../Core/Src/common/base_classes/Sensor.cpp 

OBJS += \
./Core/Src/common/base_classes/FOCMotor.o \
./Core/Src/common/base_classes/Sensor.o 

CPP_DEPS += \
./Core/Src/common/base_classes/FOCMotor.d \
./Core/Src/common/base_classes/Sensor.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/common/base_classes/%.o Core/Src/common/base_classes/%.su Core/Src/common/base_classes/%.cyclo: ../Core/Src/common/base_classes/%.cpp Core/Src/common/base_classes/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F303x8 -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-common-2f-base_classes

clean-Core-2f-Src-2f-common-2f-base_classes:
	-$(RM) ./Core/Src/common/base_classes/FOCMotor.cyclo ./Core/Src/common/base_classes/FOCMotor.d ./Core/Src/common/base_classes/FOCMotor.o ./Core/Src/common/base_classes/FOCMotor.su ./Core/Src/common/base_classes/Sensor.cyclo ./Core/Src/common/base_classes/Sensor.d ./Core/Src/common/base_classes/Sensor.o ./Core/Src/common/base_classes/Sensor.su

.PHONY: clean-Core-2f-Src-2f-common-2f-base_classes

