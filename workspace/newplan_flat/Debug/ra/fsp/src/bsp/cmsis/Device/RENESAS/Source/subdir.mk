################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ra/fsp/src/bsp/cmsis/Device/RENESAS/Source/startup.c \
../ra/fsp/src/bsp/cmsis/Device/RENESAS/Source/system.c 

C_DEPS += \
./ra/fsp/src/bsp/cmsis/Device/RENESAS/Source/startup.d \
./ra/fsp/src/bsp/cmsis/Device/RENESAS/Source/system.d 

OBJS += \
./ra/fsp/src/bsp/cmsis/Device/RENESAS/Source/startup.o \
./ra/fsp/src/bsp/cmsis/Device/RENESAS/Source/system.o 

SREC += \
newplan_flat.srec 

MAP += \
newplan_flat.map 


# Each subdirectory must supply rules for building sources it contributes
ra/fsp/src/bsp/cmsis/Device/RENESAS/Source/%.o: ../ra/fsp/src/bsp/cmsis/Device/RENESAS/Source/%.c
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython/py" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython/extmod" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython/py_port" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython/shared" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython/genhdr" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra_gen" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython" -I"." -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra_cfg/fsp_cfg/bsp" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra_cfg/fsp_cfg" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/src" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra/fsp/inc" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra/fsp/inc/api" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra/fsp/inc/instances" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra/arm/CMSIS_6/CMSIS/Core/Include" -std=c99 -Wno-sign-conversion -Wno-conversion -Wno-unused-parameter -Wno-float-equal -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

