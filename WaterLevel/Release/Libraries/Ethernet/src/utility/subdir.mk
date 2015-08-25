################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/opt/arduino-1.5.6-r2/libraries/Ethernet/src/utility/socket.cpp \
/opt/arduino-1.5.6-r2/libraries/Ethernet/src/utility/w5100.cpp 

LINK_OBJ += \
./Libraries/Ethernet/src/utility/socket.cpp.o \
./Libraries/Ethernet/src/utility/w5100.cpp.o 

CPP_DEPS += \
./Libraries/Ethernet/src/utility/socket.cpp.d \
./Libraries/Ethernet/src/utility/w5100.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/src/utility/socket.cpp.o: /opt/arduino-1.5.6-r2/libraries/Ethernet/src/utility/socket.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/opt/arduino-1.5.6-r2/hardware/tools/avr/bin/avr-g++" -c -g -Os -fno-exceptions -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=156-r2 -DARDUINO_AVR_DUEMILANOVE -DARDUINO_ARCH_AVR    -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/cores/arduino" -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/variants/standard" -I"/opt/arduino-1.5.6-r2/libraries/Ethernet" -I"/opt/arduino-1.5.6-r2/libraries/Ethernet/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/src/utility/w5100.cpp.o: /opt/arduino-1.5.6-r2/libraries/Ethernet/src/utility/w5100.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/opt/arduino-1.5.6-r2/hardware/tools/avr/bin/avr-g++" -c -g -Os -fno-exceptions -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=156-r2 -DARDUINO_AVR_DUEMILANOVE -DARDUINO_ARCH_AVR    -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/cores/arduino" -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/variants/standard" -I"/opt/arduino-1.5.6-r2/libraries/Ethernet" -I"/opt/arduino-1.5.6-r2/libraries/Ethernet/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '


