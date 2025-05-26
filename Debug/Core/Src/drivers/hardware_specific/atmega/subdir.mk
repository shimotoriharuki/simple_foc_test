################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Core/Src/drivers/hardware_specific/atmega/atmega2560_mcu.cpp \
../Core/Src/drivers/hardware_specific/atmega/atmega328_mcu.cpp \
../Core/Src/drivers/hardware_specific/atmega/atmega32u4_mcu.cpp 

OBJS += \
./Core/Src/drivers/hardware_specific/atmega/atmega2560_mcu.o \
./Core/Src/drivers/hardware_specific/atmega/atmega328_mcu.o \
./Core/Src/drivers/hardware_specific/atmega/atmega32u4_mcu.o 

CPP_DEPS += \
./Core/Src/drivers/hardware_specific/atmega/atmega2560_mcu.d \
./Core/Src/drivers/hardware_specific/atmega/atmega328_mcu.d \
./Core/Src/drivers/hardware_specific/atmega/atmega32u4_mcu.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/drivers/hardware_specific/atmega/%.o Core/Src/drivers/hardware_specific/atmega/%.su Core/Src/drivers/hardware_specific/atmega/%.cyclo: ../Core/Src/drivers/hardware_specific/atmega/%.cpp Core/Src/drivers/hardware_specific/atmega/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F303x8 -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-drivers-2f-hardware_specific-2f-atmega

clean-Core-2f-Src-2f-drivers-2f-hardware_specific-2f-atmega:
	-$(RM) ./Core/Src/drivers/hardware_specific/atmega/atmega2560_mcu.cyclo ./Core/Src/drivers/hardware_specific/atmega/atmega2560_mcu.d ./Core/Src/drivers/hardware_specific/atmega/atmega2560_mcu.o ./Core/Src/drivers/hardware_specific/atmega/atmega2560_mcu.su ./Core/Src/drivers/hardware_specific/atmega/atmega328_mcu.cyclo ./Core/Src/drivers/hardware_specific/atmega/atmega328_mcu.d ./Core/Src/drivers/hardware_specific/atmega/atmega328_mcu.o ./Core/Src/drivers/hardware_specific/atmega/atmega328_mcu.su ./Core/Src/drivers/hardware_specific/atmega/atmega32u4_mcu.cyclo ./Core/Src/drivers/hardware_specific/atmega/atmega32u4_mcu.d ./Core/Src/drivers/hardware_specific/atmega/atmega32u4_mcu.o ./Core/Src/drivers/hardware_specific/atmega/atmega32u4_mcu.su

.PHONY: clean-Core-2f-Src-2f-drivers-2f-hardware_specific-2f-atmega

