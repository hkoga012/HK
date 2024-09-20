################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.c \
../src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.c \
../src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.c \
../src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Initialization.c \
../src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.c \
../src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.c \
../src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.c \
../src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.c 

SREC += \
HK.srec 

C_DEPS += \
./src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.d \
./src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.d \
./src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.d \
./src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Initialization.d \
./src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.d \
./src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.d \
./src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.d \
./src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.d 

OBJS += \
./src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.o \
./src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.o \
./src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.o \
./src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Initialization.o \
./src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.o \
./src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.o \
./src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.o \
./src/nfc/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.o 

MAP += \
HK.map 


# Each subdirectory must supply rules for building sources it contributes
src/nfc/NxpNfcRdLib/comps/phNfcLib/src/%.o: ../src/nfc/NxpNfcRdLib/comps/phNfcLib/src/%.c
	$(file > $@.in,-mcpu=cortex-m23 -mthumb -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -gdwarf-4 -D_RA_BOOT_IMAGE -D_RA_CORE=CM23 -DNXPBUILD_CUSTOMER_HEADER_INCLUDED -DPH_OSAL_NULLOS -I"C:/01_src/HK/V1.0/HK/HK/src" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc/api" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc/instances" -I"C:/01_src/HK/V1.0/HK/HK/ra/arm/CMSIS_5/CMSIS/Core/Include" -I"C:/01_src/HK/V1.0/HK/HK/ra_gen" -I"C:/01_src/HK/V1.0/HK/HK/ra_cfg/fsp_cfg/bsp" -I"C:/01_src/HK/V1.0/HK/HK/ra_cfg/fsp_cfg" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/DAL/boards" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/DAL/inc" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/DAL/cfg" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/NxpNfcRdLib/types" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/intfs" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/NxpNfcRdLib/intfs" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/phOsal/inc" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

