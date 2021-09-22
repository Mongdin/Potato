################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/hw/hw_lpm.c \
C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/hw/hw_spi.c \
C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/hw/hw_timerserver.c \
../Application/Common/hw_interface/save.c 

OBJS += \
./Application/Common/hw_interface/hw_lpm.o \
./Application/Common/hw_interface/hw_spi.o \
./Application/Common/hw_interface/hw_timerserver.o \
./Application/Common/hw_interface/save.o 

C_DEPS += \
./Application/Common/hw_interface/hw_lpm.d \
./Application/Common/hw_interface/hw_spi.d \
./Application/Common/hw_interface/hw_timerserver.d \
./Application/Common/hw_interface/save.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Common/hw_interface/hw_lpm.o: C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/hw/hw_lpm.c Application/Common/hw_interface/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/Common/hw_interface/hw_spi.o: C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/hw/hw_spi.c Application/Common/hw_interface/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/Common/hw_interface/hw_timerserver.o: C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/hw/hw_timerserver.c Application/Common/hw_interface/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/Common/hw_interface/%.o: ../Application/Common/hw_interface/%.c Application/Common/hw_interface/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

