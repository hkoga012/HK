################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ra/fsp/src/r_gpt/r_gpt.c 

SREC += \
HK.srec 

C_DEPS += \
./ra/fsp/src/r_gpt/r_gpt.d 

OBJS += \
./ra/fsp/src/r_gpt/r_gpt.o 

MAP += \
HK.map 


# Each subdirectory must supply rules for building sources it contributes
ra/fsp/src/r_gpt/%.o: ../ra/fsp/src/r_gpt/%.c
	$(file > $@.in,-mcpu=cortex-m23 -mthumb -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -gdwarf-4 -D_RA_BOOT_IMAGE -D_RA_CORE=CM23 -DNXPBUILD_CUSTOMER_HEADER_INCLUDED -DPH_OSAL_NULLOS -I"C:/01_src/HK/V1.0/HK/HK/src" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc/api" -I"C:/01_src/HK/V1.0/HK/HK/ra/fsp/inc/instances" -I"C:/01_src/HK/V1.0/HK/HK/ra/arm/CMSIS_5/CMSIS/Core/Include" -I"C:/01_src/HK/V1.0/HK/HK/ra_gen" -I"C:/01_src/HK/V1.0/HK/HK/ra_cfg/fsp_cfg/bsp" -I"C:/01_src/HK/V1.0/HK/HK/ra_cfg/fsp_cfg" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/DAL/boards" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/DAL/inc" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/DAL/cfg" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/NxpNfcRdLib/types" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/intfs" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/NxpNfcRdLib/intfs" -I"C:/01_src/HK/V1.0/HK/HK/src/nfc/phOsal/inc" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

