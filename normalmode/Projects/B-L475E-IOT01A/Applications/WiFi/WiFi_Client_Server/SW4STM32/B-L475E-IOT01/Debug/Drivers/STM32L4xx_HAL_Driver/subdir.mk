################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal.c \
D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_cortex.c \
D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dma.c \
D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_flash.c \
D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_flash_ex.c \
D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_gpio.c \
D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_i2c.c \
D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_i2c_ex.c \
D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pwr.c \
D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pwr_ex.c \
D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rcc.c \
D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rcc_ex.c \
D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_spi.c \
D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_spi_ex.c \
D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_uart.c \
D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_uart_ex.c 

OBJS += \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal.o \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_cortex.o \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_dma.o \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_flash.o \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_flash_ex.o \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_gpio.o \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_i2c.o \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_i2c_ex.o \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_pwr.o \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_pwr_ex.o \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_rcc.o \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_rcc_ex.o \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_spi.o \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_spi_ex.o \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_uart.o \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_uart_ex.o 

C_DEPS += \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal.d \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_cortex.d \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_dma.d \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_flash.d \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_flash_ex.d \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_gpio.d \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_i2c.d \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_i2c_ex.d \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_pwr.d \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_pwr_ex.d \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_rcc.d \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_rcc_ex.d \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_spi.d \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_spi_ex.d \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_uart.d \
./Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_uart_ex.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal.o: D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal.c Drivers/STM32L4xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_cortex.o: D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_cortex.c Drivers/STM32L4xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_dma.o: D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dma.c Drivers/STM32L4xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_flash.o: D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_flash.c Drivers/STM32L4xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_flash_ex.o: D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_flash_ex.c Drivers/STM32L4xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_gpio.o: D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_gpio.c Drivers/STM32L4xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_i2c.o: D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_i2c.c Drivers/STM32L4xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_i2c_ex.o: D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_i2c_ex.c Drivers/STM32L4xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_pwr.o: D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pwr.c Drivers/STM32L4xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_pwr_ex.o: D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pwr_ex.c Drivers/STM32L4xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_rcc.o: D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rcc.c Drivers/STM32L4xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_rcc_ex.o: D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rcc_ex.c Drivers/STM32L4xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_spi.o: D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_spi.c Drivers/STM32L4xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_spi_ex.o: D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_spi_ex.c Drivers/STM32L4xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_uart.o: D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_uart.c Drivers/STM32L4xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Driver/stm32l4xx_hal_uart_ex.o: D:/git/Potato/normalmode/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_uart_ex.c Drivers/STM32L4xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L475xx -DUSE_STM32L475_DISCOVERY -c -I../../../Inc -I../../../../Common/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../../../../../Drivers/CMSIS/Include -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

