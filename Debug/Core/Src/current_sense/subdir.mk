################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Core/Src/current_sense/GenericCurrentSense.cpp \
../Core/Src/current_sense/InlineCurrentSense.cpp \
../Core/Src/current_sense/LowsideCurrentSense.cpp 

OBJS += \
./Core/Src/current_sense/GenericCurrentSense.o \
./Core/Src/current_sense/InlineCurrentSense.o \
./Core/Src/current_sense/LowsideCurrentSense.o 

CPP_DEPS += \
./Core/Src/current_sense/GenericCurrentSense.d \
./Core/Src/current_sense/InlineCurrentSense.d \
./Core/Src/current_sense/LowsideCurrentSense.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/current_sense/%.o Core/Src/current_sense/%.su Core/Src/current_sense/%.cyclo: ../Core/Src/current_sense/%.cpp Core/Src/current_sense/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F303x8 -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-current_sense

clean-Core-2f-Src-2f-current_sense:
	-$(RM) ./Core/Src/current_sense/GenericCurrentSense.cyclo ./Core/Src/current_sense/GenericCurrentSense.d ./Core/Src/current_sense/GenericCurrentSense.o ./Core/Src/current_sense/GenericCurrentSense.su ./Core/Src/current_sense/InlineCurrentSense.cyclo ./Core/Src/current_sense/InlineCurrentSense.d ./Core/Src/current_sense/InlineCurrentSense.o ./Core/Src/current_sense/InlineCurrentSense.su ./Core/Src/current_sense/LowsideCurrentSense.cyclo ./Core/Src/current_sense/LowsideCurrentSense.d ./Core/Src/current_sense/LowsideCurrentSense.o ./Core/Src/current_sense/LowsideCurrentSense.su

.PHONY: clean-Core-2f-Src-2f-current_sense

