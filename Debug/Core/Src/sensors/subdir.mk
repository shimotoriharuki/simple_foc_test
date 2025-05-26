################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Core/Src/sensors/Encoder.cpp \
../Core/Src/sensors/GenericSensor.cpp \
../Core/Src/sensors/HallSensor.cpp \
../Core/Src/sensors/MagneticSensorAnalog.cpp \
../Core/Src/sensors/MagneticSensorI2C.cpp \
../Core/Src/sensors/MagneticSensorPWM.cpp \
../Core/Src/sensors/MagneticSensorSPI.cpp 

OBJS += \
./Core/Src/sensors/Encoder.o \
./Core/Src/sensors/GenericSensor.o \
./Core/Src/sensors/HallSensor.o \
./Core/Src/sensors/MagneticSensorAnalog.o \
./Core/Src/sensors/MagneticSensorI2C.o \
./Core/Src/sensors/MagneticSensorPWM.o \
./Core/Src/sensors/MagneticSensorSPI.o 

CPP_DEPS += \
./Core/Src/sensors/Encoder.d \
./Core/Src/sensors/GenericSensor.d \
./Core/Src/sensors/HallSensor.d \
./Core/Src/sensors/MagneticSensorAnalog.d \
./Core/Src/sensors/MagneticSensorI2C.d \
./Core/Src/sensors/MagneticSensorPWM.d \
./Core/Src/sensors/MagneticSensorSPI.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/sensors/%.o Core/Src/sensors/%.su Core/Src/sensors/%.cyclo: ../Core/Src/sensors/%.cpp Core/Src/sensors/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F303x8 -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-sensors

clean-Core-2f-Src-2f-sensors:
	-$(RM) ./Core/Src/sensors/Encoder.cyclo ./Core/Src/sensors/Encoder.d ./Core/Src/sensors/Encoder.o ./Core/Src/sensors/Encoder.su ./Core/Src/sensors/GenericSensor.cyclo ./Core/Src/sensors/GenericSensor.d ./Core/Src/sensors/GenericSensor.o ./Core/Src/sensors/GenericSensor.su ./Core/Src/sensors/HallSensor.cyclo ./Core/Src/sensors/HallSensor.d ./Core/Src/sensors/HallSensor.o ./Core/Src/sensors/HallSensor.su ./Core/Src/sensors/MagneticSensorAnalog.cyclo ./Core/Src/sensors/MagneticSensorAnalog.d ./Core/Src/sensors/MagneticSensorAnalog.o ./Core/Src/sensors/MagneticSensorAnalog.su ./Core/Src/sensors/MagneticSensorI2C.cyclo ./Core/Src/sensors/MagneticSensorI2C.d ./Core/Src/sensors/MagneticSensorI2C.o ./Core/Src/sensors/MagneticSensorI2C.su ./Core/Src/sensors/MagneticSensorPWM.cyclo ./Core/Src/sensors/MagneticSensorPWM.d ./Core/Src/sensors/MagneticSensorPWM.o ./Core/Src/sensors/MagneticSensorPWM.su ./Core/Src/sensors/MagneticSensorSPI.cyclo ./Core/Src/sensors/MagneticSensorSPI.d ./Core/Src/sensors/MagneticSensorSPI.o ./Core/Src/sensors/MagneticSensorSPI.su

.PHONY: clean-Core-2f-Src-2f-sensors

