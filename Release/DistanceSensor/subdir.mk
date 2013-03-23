################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../DistanceSensor/DistanceSensor.cpp 

OBJS += \
./DistanceSensor/DistanceSensor.o 

CPP_DEPS += \
./DistanceSensor/DistanceSensor.d 


# Each subdirectory must supply rules for building sources it contributes
DistanceSensor/%.o: ../DistanceSensor/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I/usr/share/arduino/hardware/arduino/cores/arduino -I/usr/share/arduino/hardware/arduino/variants/standard -I"/storage/microcontroller/arduino/driver/sensor/distance/DistanceSensor" -I"/storage/microcontroller/arduino/driver/sensor/distance/UltrasoundDistanceSensor" -Wall -Os -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -fno-exceptions -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


