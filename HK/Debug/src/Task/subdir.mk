################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Task/CommandReceiver.cpp \
../src/Task/DataManager.cpp \
../src/Task/DebugCommand.cpp \
../src/Task/EventSender.cpp \
../src/Task/FwUpdater.cpp \
../src/Task/NfcReader.cpp \
../src/Task/OutputController.cpp 

SREC += \
HK.srec 

OBJS += \
./src/Task/CommandReceiver.o \
./src/Task/DataManager.o \
./src/Task/DebugCommand.o \
./src/Task/EventSender.o \
./src/Task/FwUpdater.o \
./src/Task/NfcReader.o \
./src/Task/OutputController.o 

MAP += \
HK.map 

CPP_DEPS += \
./src/Task/CommandReceiver.d \
./src/Task/DataManager.d \
./src/Task/DebugCommand.d \
./src/Task/EventSender.d \
./src/Task/FwUpdater.d \
./src/Task/NfcReader.d \
./src/Task/OutputController.d 


# Each subdirectory must supply rules for building sources it contributes
src/Task/%.o: ../src/Task/%.cpp
	$(file > $@.in,-mcpu=cortex-m23 -mthumb -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -gdwarf-4 -D_RENESAS_RA_ -D_RA_CORE=CM23 -D_RA_BOOT_IMAGE -I"C:/01_src/HK/V1.0/HK/HK/src" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc/api" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc/instances" -I"C:/01_src/HK/V1.0/HK/HK/ra/arm/CMSIS_5/CMSIS/Core/Include" -I"C:/01_src/HK/V1.0/HK/HK/ra_gen" -I"C:/01_src/HK/V1.0/HK/HK/ra_cfg/fsp_cfg/bsp" -I"C:/01_src/HK/V1.0/HK/HK/ra_cfg/fsp_cfg" -std=c++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c++ "$<")
	@echo Building file: $< && arm-none-eabi-g++ @"$@.in"

