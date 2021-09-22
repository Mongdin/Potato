################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/P2P_LedButton/SW4STM32/startup_stm32l475xx.s 

OBJS += \
./Drivers/CMSIS/startup_stm32l475xx.o 

S_DEPS += \
./Drivers/CMSIS/startup_stm32l475xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/startup_stm32l475xx.o: C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/P2P_LedButton/SW4STM32/startup_stm32l475xx.s Drivers/CMSIS/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

