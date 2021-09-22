################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal.c \
D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_cortex.c \
D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dma.c \
D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_gpio.c \
D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_i2c.c \
D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_i2c_ex.c \
D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pwr.c \
D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pwr_ex.c \
D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rcc.c \
D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rtc.c \
D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rtc_ex.c \
D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_spi.c \
D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_uart.c \
D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_uart_ex.c 

OBJS += \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal.o \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_cortex.o \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_dma.o \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_gpio.o \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_i2c.o \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_i2c_ex.o \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_pwr.o \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_pwr_ex.o \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_rcc.o \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_rtc.o \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_rtc_ex.o \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_spi.o \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_uart.o \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_uart_ex.o 

C_DEPS += \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal.d \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_cortex.d \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_dma.d \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_gpio.d \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_i2c.d \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_i2c_ex.d \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_pwr.d \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_pwr_ex.d \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_rcc.d \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_rtc.d \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_rtc_ex.d \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_spi.d \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_uart.d \
./Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_uart_ex.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal.o: D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal.c Drivers/STM32L4xx_HAL_Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_cortex.o: D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_cortex.c Drivers/STM32L4xx_HAL_Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_dma.o: D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dma.c Drivers/STM32L4xx_HAL_Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_gpio.o: D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_gpio.c Drivers/STM32L4xx_HAL_Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_i2c.o: D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_i2c.c Drivers/STM32L4xx_HAL_Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_i2c_ex.o: D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_i2c_ex.c Drivers/STM32L4xx_HAL_Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_pwr.o: D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pwr.c Drivers/STM32L4xx_HAL_Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_pwr_ex.o: D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pwr_ex.c Drivers/STM32L4xx_HAL_Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_rcc.o: D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rcc.c Drivers/STM32L4xx_HAL_Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_rtc.o: D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rtc.c Drivers/STM32L4xx_HAL_Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_rtc_ex.o: D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rtc_ex.c Drivers/STM32L4xx_HAL_Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_spi.o: D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_spi.c Drivers/STM32L4xx_HAL_Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_uart.o: D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_uart.c Drivers/STM32L4xx_HAL_Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/STM32L4xx_HAL_Drivers/stm32l4xx_hal_uart_ex.o: D:/git/Potato/test/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_uart_ex.c Drivers/STM32L4xx_HAL_Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

