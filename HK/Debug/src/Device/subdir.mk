################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Device/ADC.cpp \
../src/Device/AGT.cpp \
../src/Device/IOPort.cpp \
../src/Device/PWM.cpp \
../src/Device/UART.cpp \
../src/Device/WDT.cpp 

SREC += \
HK.srec 

OBJS += \
./src/Device/ADC.o \
./src/Device/AGT.o \
./src/Device/IOPort.o \
./src/Device/PWM.o \
./src/Device/UART.o \
./src/Device/WDT.o 

MAP += \
HK.map 

CPP_DEPS += \
./src/Device/ADC.d \
./src/Device/AGT.d \
./src/Device/IOPort.d \
./src/Device/PWM.d \
./src/Device/UART.d \
./src/Device/WDT.d 


# Each subdirectory must supply rules for building sources it contributes
src/Device/%.o: ../src/Device/%.cpp
	$(file > $@.in,-mcpu=cortex-m23 -mthumb -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -gdwarf-4 -D_RENESAS_RA_ -D_RA_CORE=CM23 -D_RA_BOOT_IMAGE -I"C:/01_src/HK/V1.0/HK/HK/src" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc/api" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc/instances" -I"C:/01_src/HK/V1.0/HK/HK/ra/arm/CMSIS_5/CMSIS/Core/Include" -I"C:/01_src/HK/V1.0/HK/HK/ra_gen" -I"C:/01_src/HK/V1.0/HK/HK/ra_cfg/fsp_cfg/bsp" -I"C:/01_src/HK/V1.0/HK/HK/ra_cfg/fsp_cfg" -std=c++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c++ "$<")
	@echo Building file: $< && arm-none-eabi-g++ @"$@.in"

