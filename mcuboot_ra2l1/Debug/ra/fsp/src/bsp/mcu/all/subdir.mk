################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ra/fsp/src/bsp/mcu/all/bsp_clocks.c \
../ra/fsp/src/bsp/mcu/all/bsp_common.c \
../ra/fsp/src/bsp/mcu/all/bsp_delay.c \
../ra/fsp/src/bsp/mcu/all/bsp_group_irq.c \
../ra/fsp/src/bsp/mcu/all/bsp_guard.c \
../ra/fsp/src/bsp/mcu/all/bsp_io.c \
../ra/fsp/src/bsp/mcu/all/bsp_irq.c \
../ra/fsp/src/bsp/mcu/all/bsp_register_protection.c \
../ra/fsp/src/bsp/mcu/all/bsp_rom_registers.c \
../ra/fsp/src/bsp/mcu/all/bsp_sbrk.c \
../ra/fsp/src/bsp/mcu/all/bsp_security.c 

C_DEPS += \
./ra/fsp/src/bsp/mcu/all/bsp_clocks.d \
./ra/fsp/src/bsp/mcu/all/bsp_common.d \
./ra/fsp/src/bsp/mcu/all/bsp_delay.d \
./ra/fsp/src/bsp/mcu/all/bsp_group_irq.d \
./ra/fsp/src/bsp/mcu/all/bsp_guard.d \
./ra/fsp/src/bsp/mcu/all/bsp_io.d \
./ra/fsp/src/bsp/mcu/all/bsp_irq.d \
./ra/fsp/src/bsp/mcu/all/bsp_register_protection.d \
./ra/fsp/src/bsp/mcu/all/bsp_rom_registers.d \
./ra/fsp/src/bsp/mcu/all/bsp_sbrk.d \
./ra/fsp/src/bsp/mcu/all/bsp_security.d 

OBJS += \
./ra/fsp/src/bsp/mcu/all/bsp_clocks.o \
./ra/fsp/src/bsp/mcu/all/bsp_common.o \
./ra/fsp/src/bsp/mcu/all/bsp_delay.o \
./ra/fsp/src/bsp/mcu/all/bsp_group_irq.o \
./ra/fsp/src/bsp/mcu/all/bsp_guard.o \
./ra/fsp/src/bsp/mcu/all/bsp_io.o \
./ra/fsp/src/bsp/mcu/all/bsp_irq.o \
./ra/fsp/src/bsp/mcu/all/bsp_register_protection.o \
./ra/fsp/src/bsp/mcu/all/bsp_rom_registers.o \
./ra/fsp/src/bsp/mcu/all/bsp_sbrk.o \
./ra/fsp/src/bsp/mcu/all/bsp_security.o 

SREC += \
mcuboot_ra2l1.srec 

MAP += \
mcuboot_ra2l1.map 


# Each subdirectory must supply rules for building sources it contributes
ra/fsp/src/bsp/mcu/all/%.o: ../ra/fsp/src/bsp/mcu/all/%.c
	$(file > $@.in,-mcpu=cortex-m23 -mthumb -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g -gdwarf-4 -D_RENESAS_RA_ -D_RA_CORE=CM23 -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/src" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/fsp/inc" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/fsp/inc/api" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/fsp/inc/instances" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/arm/CMSIS_5/CMSIS/Core/Include" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra_gen" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra_cfg/fsp_cfg/bsp" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra_cfg/fsp_cfg" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/mcu-tools/MCUboot/boot/bootutil/src" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra_cfg/mcu-tools/include" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/mcu-tools/MCUboot/boot/bootutil/include" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/fsp/src/rm_mcuboot_port" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/mcu-tools/MCUboot/ext/tinycrypt/lib/include" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra/mcu-tools/MCUboot/ext/mbedtls-asn1/include" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra_cfg/mcu-tools/include/mcuboot_config" -I"C:/01_src/HK/V1.0/HK/mcuboot_ra2l1/ra_cfg/mcu-tools/include/sysflash" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

