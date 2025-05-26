################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Core/Src/communication/StepDirListener.cpp 

OBJS += \
./Core/Src/communication/StepDirListener.o 

CPP_DEPS += \
./Core/Src/communication/StepDirListener.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/communication/%.o Core/Src/communication/%.su Core/Src/communication/%.cyclo: ../Core/Src/communication/%.cpp Core/Src/communication/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F303x8 -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-communication

clean-Core-2f-Src-2f-communication:
	-$(RM) ./Core/Src/communication/StepDirListener.cyclo ./Core/Src/communication/StepDirListener.d ./Core/Src/communication/StepDirListener.o ./Core/Src/communication/StepDirListener.su

.PHONY: clean-Core-2f-Src-2f-communication

