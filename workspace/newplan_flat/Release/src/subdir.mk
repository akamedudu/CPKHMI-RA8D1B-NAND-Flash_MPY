################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/_syscalls.c \
../src/hal_entry.c \
../src/hal_warmstart.c 

C_DEPS += \
./src/_syscalls.d \
./src/hal_entry.d \
./src/hal_warmstart.d 

OBJS += \
./src/_syscalls.o \
./src/hal_entry.o \
./src/hal_warmstart.o 

SREC += \
newplan_flat.srec 

MAP += \
newplan_flat.map 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -I"E:/e2_studio/workspace/newplan_flat/ra_gen" -I"." -I"E:/e2_studio/workspace/newplan_flat/ra_cfg/fsp_cfg/bsp" -I"E:/e2_studio/workspace/newplan_flat/ra_cfg/fsp_cfg" -I"E:/e2_studio/workspace/newplan_flat/src" -I"E:/e2_studio/workspace/newplan_flat/ra/fsp/inc" -I"E:/e2_studio/workspace/newplan_flat/ra/fsp/inc/api" -I"E:/e2_studio/workspace/newplan_flat/ra/fsp/inc/instances" -I"E:/e2_studio/workspace/newplan_flat/ra/arm/CMSIS_6/CMSIS/Core/Include" -std=c99 -Wno-stringop-overflow -Wno-format-truncation -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

