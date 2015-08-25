################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include arduino/core/avr-libc/subdir.mk
-include arduino/core/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
AR += \
/home/rcsdnj/dev/Arduino/TemperatureReader/Release/arduino.ar \

ELF += \
TemperatureReader.elf \

EEP += \
TemperatureReader.eep \

FLASH_IMAGE += \
TemperatureReader.hex \


# All Target
all: TemperatureReader

# Tool invocations
TemperatureReader: $(FLASH_IMAGE)
	@echo 'Building target: $@'
	@echo 'Printing size:'
	"/opt/arduino-1.5.6-r2/hardware/tools/avr/bin/avr-size" -A "/home/rcsdnj/dev/Arduino/TemperatureReader/Release/TemperatureReader.elf"
	@echo 'Finished building target: $@'
	@echo ' '

/home/rcsdnj/dev/Arduino/TemperatureReader/Release/arduino.ar: $(AR_OBJ)
	@echo 'Starting archiver'
	"/opt/arduino-1.5.6-r2/hardware/tools/avr/bin/avr-ar" rcs "/home/rcsdnj/dev/Arduino/TemperatureReader/Release/arduino.ar"   $(AR_OBJ)
	@echo 'Finished building: $@'
	@echo ' '

TemperatureReader.elf: $(LINK_OBJ) $(AR)
	@echo 'Starting combiner'
	"/opt/arduino-1.5.6-r2/hardware/tools/avr/bin/avr-gcc" -Os -Wl,--gc-sections -mmcu=atmega328p -o "/home/rcsdnj/dev/Arduino/TemperatureReader/Release/TemperatureReader.elf"   $(LINK_OBJ) $(AR)  "/home/rcsdnj/dev/Arduino/TemperatureReader/Release/arduino.ar" "-L/home/rcsdnj/dev/Arduino/TemperatureReader/Release" -lm
	@echo 'Finished building: $@'
	@echo ' '

TemperatureReader.eep: $(ELF)
	@echo 'Create eeprom image'
	"/opt/arduino-1.5.6-r2/hardware/tools/avr/bin/avr-objcopy" -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load --no-change-warnings --change-section-lma .eeprom=0 "/home/rcsdnj/dev/Arduino/TemperatureReader/Release/TemperatureReader.elf" "/home/rcsdnj/dev/Arduino/TemperatureReader/Release/TemperatureReader.eep"
	@echo 'Finished building: $@'
	@echo ' '

TemperatureReader.hex: $(EEP)
	@echo 'Create Flash image (ihex format)'
	"/opt/arduino-1.5.6-r2/hardware/tools/avr/bin/avr-objcopy" -O ihex -R .eeprom "/home/rcsdnj/dev/Arduino/TemperatureReader/Release/TemperatureReader.elf" "/home/rcsdnj/dev/Arduino/TemperatureReader/Release/TemperatureReader.hex"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(C_DEPS)$(AR)$(EEP)$(FLASH_IMAGE)$(CC_DEPS)$(AR_OBJ)$(C++_DEPS)$(LINK_OBJ)$(CXX_DEPS)$(ASM_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(ELF)$(CPP_DEPS) TemperatureReader
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
