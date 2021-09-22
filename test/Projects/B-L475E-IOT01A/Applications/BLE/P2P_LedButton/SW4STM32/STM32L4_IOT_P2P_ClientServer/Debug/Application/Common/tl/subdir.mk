################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/tl/tl_ble_hci.c \
C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/tl/tl_ble_io.c \
C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/tl/tl_ble_reassembly.c \
C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/tl/tl_ble_spi.c 

OBJS += \
./Application/Common/tl/tl_ble_hci.o \
./Application/Common/tl/tl_ble_io.o \
./Application/Common/tl/tl_ble_reassembly.o \
./Application/Common/tl/tl_ble_spi.o 

C_DEPS += \
./Application/Common/tl/tl_ble_hci.d \
./Application/Common/tl/tl_ble_io.d \
./Application/Common/tl/tl_ble_reassembly.d \
./Application/Common/tl/tl_ble_spi.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Common/tl/tl_ble_hci.o: C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/tl/tl_ble_hci.c Application/Common/tl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/Common/tl/tl_ble_io.o: C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/tl/tl_ble_io.c Application/Common/tl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/Common/tl/tl_ble_reassembly.o: C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/tl/tl_ble_reassembly.c Application/Common/tl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/Common/tl/tl_ble_spi.o: C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/tl/tl_ble_spi.c Application/Common/tl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

