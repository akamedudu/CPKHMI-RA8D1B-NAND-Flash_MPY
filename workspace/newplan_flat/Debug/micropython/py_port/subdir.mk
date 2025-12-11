################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LINKER_SCRIPT += \
../micropython/py_port/stm32f405.ld 

C_SRCS += \
../micropython/py_port/led.c \
../micropython/py_port/machine_adc.c \
../micropython/py_port/machine_dac.c \
../micropython/py_port/machine_i2c.c \
../micropython/py_port/machine_pin.c \
../micropython/py_port/machine_spi.c \
../micropython/py_port/machine_uart.c \
../micropython/py_port/modmachine.c \
../micropython/py_port/mp_hal_ra8d1.c \
../micropython/py_port/mp_stub.c \
../micropython/py_port/mp_uart.c \
../micropython/py_port/py_main.c \
../micropython/py_port/uart_core.c 

C_DEPS += \
./micropython/py_port/led.d \
./micropython/py_port/machine_adc.d \
./micropython/py_port/machine_dac.d \
./micropython/py_port/machine_i2c.d \
./micropython/py_port/machine_pin.d \
./micropython/py_port/machine_spi.d \
./micropython/py_port/machine_uart.d \
./micropython/py_port/modmachine.d \
./micropython/py_port/mp_hal_ra8d1.d \
./micropython/py_port/mp_stub.d \
./micropython/py_port/mp_uart.d \
./micropython/py_port/py_main.d \
./micropython/py_port/uart_core.d 

OBJS += \
./micropython/py_port/led.o \
./micropython/py_port/machine_adc.o \
./micropython/py_port/machine_dac.o \
./micropython/py_port/machine_i2c.o \
./micropython/py_port/machine_pin.o \
./micropython/py_port/machine_spi.o \
./micropython/py_port/machine_uart.o \
./micropython/py_port/modmachine.o \
./micropython/py_port/mp_hal_ra8d1.o \
./micropython/py_port/mp_stub.o \
./micropython/py_port/mp_uart.o \
./micropython/py_port/py_main.o \
./micropython/py_port/uart_core.o 

SREC += \
newplan_flat.srec 

MAP += \
newplan_flat.map 


# Each subdirectory must supply rules for building sources it contributes
micropython/py_port/%.o: ../micropython/py_port/%.c
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-strict-aliasing -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython/py" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython/extmod" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython/shared" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython/genhdr" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra_gen" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/micropython" -I"." -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra_cfg/fsp_cfg/bsp" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra_cfg/fsp_cfg" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/src" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra/fsp/inc" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra/fsp/inc/api" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra/fsp/inc/instances" -I"C:/Users/demon/Desktop/newplan/workspace/newplan_flat/ra/arm/CMSIS_6/CMSIS/Core/Include" -std=c99 -Wno-sign-conversion -Wno-conversion -Wno-unused-parameter -Wno-float-equal -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

