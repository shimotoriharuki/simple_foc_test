################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Core/Src/common/foc_utils.cpp \
../Core/Src/common/lowpass_filter.cpp \
../Core/Src/common/pid.cpp \
../Core/Src/common/time_utils.cpp 

OBJS += \
./Core/Src/common/foc_utils.o \
./Core/Src/common/lowpass_filter.o \
./Core/Src/common/pid.o \
./Core/Src/common/time_utils.o 

CPP_DEPS += \
./Core/Src/common/foc_utils.d \
./Core/Src/common/lowpass_filter.d \
./Core/Src/common/pid.d \
./Core/Src/common/time_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/common/%.o Core/Src/common/%.su Core/Src/common/%.cyclo: ../Core/Src/common/%.cpp Core/Src/common/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F303x8 -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-common

clean-Core-2f-Src-2f-common:
	-$(RM) ./Core/Src/common/foc_utils.cyclo ./Core/Src/common/foc_utils.d ./Core/Src/common/foc_utils.o ./Core/Src/common/foc_utils.su ./Core/Src/common/lowpass_filter.cyclo ./Core/Src/common/lowpass_filter.d ./Core/Src/common/lowpass_filter.o ./Core/Src/common/lowpass_filter.su ./Core/Src/common/pid.cyclo ./Core/Src/common/pid.d ./Core/Src/common/pid.o ./Core/Src/common/pid.su ./Core/Src/common/time_utils.cyclo ./Core/Src/common/time_utils.d ./Core/Src/common/time_utils.o ./Core/Src/common/time_utils.su

.PHONY: clean-Core-2f-Src-2f-common

