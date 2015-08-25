################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/opt/arduino-1.5.6-r2/libraries/Ethernet/src/Dhcp.cpp \
/opt/arduino-1.5.6-r2/libraries/Ethernet/src/Dns.cpp \
/opt/arduino-1.5.6-r2/libraries/Ethernet/src/Ethernet.cpp \
/opt/arduino-1.5.6-r2/libraries/Ethernet/src/EthernetClient.cpp \
/opt/arduino-1.5.6-r2/libraries/Ethernet/src/EthernetServer.cpp \
/opt/arduino-1.5.6-r2/libraries/Ethernet/src/EthernetUdp.cpp 

LINK_OBJ += \
./Libraries/Ethernet/src/Dhcp.cpp.o \
./Libraries/Ethernet/src/Dns.cpp.o \
./Libraries/Ethernet/src/Ethernet.cpp.o \
./Libraries/Ethernet/src/EthernetClient.cpp.o \
./Libraries/Ethernet/src/EthernetServer.cpp.o \
./Libraries/Ethernet/src/EthernetUdp.cpp.o 

CPP_DEPS += \
./Libraries/Ethernet/src/Dhcp.cpp.d \
./Libraries/Ethernet/src/Dns.cpp.d \
./Libraries/Ethernet/src/Ethernet.cpp.d \
./Libraries/Ethernet/src/EthernetClient.cpp.d \
./Libraries/Ethernet/src/EthernetServer.cpp.d \
./Libraries/Ethernet/src/EthernetUdp.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/Ethernet/src/Dhcp.cpp.o: /opt/arduino-1.5.6-r2/libraries/Ethernet/src/Dhcp.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/opt/arduino-1.5.6-r2/hardware/tools/avr/bin/avr-g++" -c -g -Os -fno-exceptions -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=156-r2 -DARDUINO_AVR_DUEMILANOVE -DARDUINO_ARCH_AVR    -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/cores/arduino" -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/variants/standard" -I"/opt/arduino-1.5.6-r2/libraries/Ethernet" -I"/opt/arduino-1.5.6-r2/libraries/Ethernet/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/src/Dns.cpp.o: /opt/arduino-1.5.6-r2/libraries/Ethernet/src/Dns.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/opt/arduino-1.5.6-r2/hardware/tools/avr/bin/avr-g++" -c -g -Os -fno-exceptions -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=156-r2 -DARDUINO_AVR_DUEMILANOVE -DARDUINO_ARCH_AVR    -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/cores/arduino" -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/variants/standard" -I"/opt/arduino-1.5.6-r2/libraries/Ethernet" -I"/opt/arduino-1.5.6-r2/libraries/Ethernet/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/src/Ethernet.cpp.o: /opt/arduino-1.5.6-r2/libraries/Ethernet/src/Ethernet.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/opt/arduino-1.5.6-r2/hardware/tools/avr/bin/avr-g++" -c -g -Os -fno-exceptions -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=156-r2 -DARDUINO_AVR_DUEMILANOVE -DARDUINO_ARCH_AVR    -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/cores/arduino" -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/variants/standard" -I"/opt/arduino-1.5.6-r2/libraries/Ethernet" -I"/opt/arduino-1.5.6-r2/libraries/Ethernet/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/src/EthernetClient.cpp.o: /opt/arduino-1.5.6-r2/libraries/Ethernet/src/EthernetClient.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/opt/arduino-1.5.6-r2/hardware/tools/avr/bin/avr-g++" -c -g -Os -fno-exceptions -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=156-r2 -DARDUINO_AVR_DUEMILANOVE -DARDUINO_ARCH_AVR    -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/cores/arduino" -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/variants/standard" -I"/opt/arduino-1.5.6-r2/libraries/Ethernet" -I"/opt/arduino-1.5.6-r2/libraries/Ethernet/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/src/EthernetServer.cpp.o: /opt/arduino-1.5.6-r2/libraries/Ethernet/src/EthernetServer.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/opt/arduino-1.5.6-r2/hardware/tools/avr/bin/avr-g++" -c -g -Os -fno-exceptions -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=156-r2 -DARDUINO_AVR_DUEMILANOVE -DARDUINO_ARCH_AVR    -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/cores/arduino" -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/variants/standard" -I"/opt/arduino-1.5.6-r2/libraries/Ethernet" -I"/opt/arduino-1.5.6-r2/libraries/Ethernet/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '

Libraries/Ethernet/src/EthernetUdp.cpp.o: /opt/arduino-1.5.6-r2/libraries/Ethernet/src/EthernetUdp.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/opt/arduino-1.5.6-r2/hardware/tools/avr/bin/avr-g++" -c -g -Os -fno-exceptions -ffunction-sections -fdata-sections -MMD -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=156-r2 -DARDUINO_AVR_DUEMILANOVE -DARDUINO_ARCH_AVR    -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/cores/arduino" -I"/opt/arduino-1.5.6-r2/hardware/arduino/avr/variants/standard" -I"/opt/arduino-1.5.6-r2/libraries/Ethernet" -I"/opt/arduino-1.5.6-r2/libraries/Ethernet/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"   -Wall
	@echo 'Finished building: $<'
	@echo ' '


