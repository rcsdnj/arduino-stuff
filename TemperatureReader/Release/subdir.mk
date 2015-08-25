################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../TemperatureReader.cpp 

LINK_OBJ += \
./TemperatureReader.cpp.o 

CPP_DEPS += \
./TemperatureReader.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
TemperatureReader.cpp.o: ../TemperatureReader.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/opt/arduino-1.5.6-r2/hardware/tools/avr/bin/avr-g++" -c -g -Os -fno-exceptions -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=156-r2 -DARDUINO_AVR_DUEMILANOVE -DARDUINO_ARCH_AVR    -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/cores/arduino" -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/variants/standard" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -w
	@echo 'Finished building: $<'
	@echo ' '


