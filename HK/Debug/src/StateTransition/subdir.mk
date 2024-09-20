################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/StateTransition/BaseTask.cpp \
../src/StateTransition/EventControl.cpp \
../src/StateTransition/State.cpp \
../src/StateTransition/TaskControl.cpp \
../src/StateTransition/common.cpp 

SREC += \
HK.srec 

OBJS += \
./src/StateTransition/BaseTask.o \
./src/StateTransition/EventControl.o \
./src/StateTransition/State.o \
./src/StateTransition/TaskControl.o \
./src/StateTransition/common.o 

MAP += \
HK.map 

CPP_DEPS += \
./src/StateTransition/BaseTask.d \
./src/StateTransition/EventControl.d \
./src/StateTransition/State.d \
./src/StateTransition/TaskControl.d \
./src/StateTransition/common.d 


# Each subdirectory must supply rules for building sources it contributes
src/StateTransition/%.o: ../src/StateTransition/%.cpp
	$(file > $@.in,-mcpu=cortex-m23 -mthumb -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -gdwarf-4 -D_RENESAS_RA_ -D_RA_CORE=CM23 -D_RA_BOOT_IMAGE -I"C:/01_src/HK/V1.0/HK/HK/src" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc/api" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc/instances" -I"C:/01_src/HK/V1.0/HK/HK/ra/arm/CMSIS_5/CMSIS/Core/Include" -I"C:/01_src/HK/V1.0/HK/HK/ra_gen" -I"C:/01_src/HK/V1.0/HK/HK/ra_cfg/fsp_cfg/bsp" -I"C:/01_src/HK/V1.0/HK/HK/ra_cfg/fsp_cfg" -std=c++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c++ "$<")
	@echo Building file: $< && arm-none-eabi-g++ @"$@.in"

