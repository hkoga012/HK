################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ra_gen/common_data.c \
../ra_gen/hal_data.c \
../ra_gen/main.c \
../ra_gen/pin_data.c \
../ra_gen/vector_data.c 

SREC += \
HK.srec 

C_DEPS += \
./ra_gen/common_data.d \
./ra_gen/hal_data.d \
./ra_gen/main.d \
./ra_gen/pin_data.d \
./ra_gen/vector_data.d 

OBJS += \
./ra_gen/common_data.o \
./ra_gen/hal_data.o \
./ra_gen/main.o \
./ra_gen/pin_data.o \
./ra_gen/vector_data.o 

MAP += \
HK.map 


# Each subdirectory must supply rules for building sources it contributes
ra_gen/%.o: ../ra_gen/%.c
	$(file > $@.in,-mcpu=cortex-m23 -mthumb -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -gdwarf-4 -D_RA_BOOT_IMAGE -D_RA_CORE=CM23 -DNXPBUILD_CUSTOMER_HEADER_INCLUDED -DPH_OSAL_NULLOS -I"C:/01_src/HK/V1.0/HK/HK/src" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc/api" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc/instances" -I"C:/01_src/HK/V1.0/HK/HK/ra/arm/CMSIS_5/CMSIS/Core/Include" -I"C:/01_src/HK/V1.0/HK/HK/ra_gen" -I"C:/01_src/HK/V1.0/HK/HK/ra_cfg/fsp_cfg/bsp" -I"C:/01_src/HK/V1.0/HK/HK/ra_cfg/fsp_cfg" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/DAL/boards" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/DAL/inc" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/DAL/cfg" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/NxpNfcRdLib/types" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/intfs" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/NxpNfcRdLib/intfs" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/phOsal/inc" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

