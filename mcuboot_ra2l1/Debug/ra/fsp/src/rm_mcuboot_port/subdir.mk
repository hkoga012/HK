################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ra/fsp/src/rm_mcuboot_port/flash_map.c \
../ra/fsp/src/rm_mcuboot_port/rm_mcuboot_port.c 

C_DEPS += \
./ra/fsp/src/rm_mcuboot_port/flash_map.d \
./ra/fsp/src/rm_mcuboot_port/rm_mcuboot_port.d 

OBJS += \
./ra/fsp/src/rm_mcuboot_port/flash_map.o \
./ra/fsp/src/rm_mcuboot_port/rm_mcuboot_port.o 

SREC += \
mcuboot_ra2l1.srec 

MAP += \
mcuboot_ra2l1.map 


# Each subdirectory must supply rules for building sources it contributes
ra/fsp/src/rm_mcuboot_port/%.o: ../ra/fsp/src/rm_mcuboot_port/%.c
	$(file > $@.in,-mcpu=cortex-m23 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -gdwarf-4 -D_RENESAS_RA_ -D_RA_CORE=CM23 -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/src" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/fsp/inc" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/fsp/inc/api" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/fsp/inc/instances" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/arm/CMSIS_5/CMSIS/Core/Include" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra_gen" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra_cfg/fsp_cfg/bsp" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra_cfg/fsp_cfg" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/mcu-tools/MCUboot/boot/bootutil/src" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra_cfg/mcu-tools/include" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/mcu-tools/MCUboot/boot/bootutil/include" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/fsp/src/rm_mcuboot_port" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/mcu-tools/MCUboot/ext/tinycrypt/lib/include" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/mcu-tools/MCUboot/ext/mbedtls-asn1/include" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra_cfg/mcu-tools/include/mcuboot_config" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra_cfg/mcu-tools/include/sysflash" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

