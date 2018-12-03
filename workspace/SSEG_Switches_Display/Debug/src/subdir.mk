################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

CPP_SRCS += \
../src/chu_init.cpp \
../src/gpio_cores.cpp \
../src/i2c_core.cpp \
../src/main_sseg.cpp \
../src/spi_core.cpp \
../src/sseg_core.cpp \
../src/timer_core.cpp \
../src/uart_core.cpp \
../src/xadc_core.cpp 

OBJS += \
./src/chu_init.o \
./src/gpio_cores.o \
./src/i2c_core.o \
./src/main_sseg.o \
./src/spi_core.o \
./src/sseg_core.o \
./src/timer_core.o \
./src/uart_core.o \
./src/xadc_core.o 

CPP_DEPS += \
./src/chu_init.d \
./src/gpio_cores.d \
./src/i2c_core.d \
./src/main_sseg.d \
./src/spi_core.d \
./src/sseg_core.d \
./src/timer_core.d \
./src/uart_core.d \
./src/xadc_core.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze g++ compiler'
	mb-g++ -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../standalone_bsp_0/microblaze_I/include -mno-xl-reorder -mlittle-endian -mcpu=v10.0 -mxl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


