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

SREC += \
newplan_flat.srec 

MAP += \
newplan_flat.map 


# Each subdirectory must supply rules for building sources it contributes
ra_gen/%.o: ../ra_gen/%.c
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython/py" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython/extmod" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython/py_port" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython/shared" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython/genhdr" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra_gen" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython" -I"." -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra_cfg/fsp_cfg/bsp" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra_cfg/fsp_cfg" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/src" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra/fsp/inc" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra/fsp/inc/api" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra/fsp/inc/instances" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra/arm/CMSIS_6/CMSIS/Core/Include" -std=c99 -Wno-sign-conversion -Wno-conversion -Wno-unused-parameter -Wno-float-equal -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

