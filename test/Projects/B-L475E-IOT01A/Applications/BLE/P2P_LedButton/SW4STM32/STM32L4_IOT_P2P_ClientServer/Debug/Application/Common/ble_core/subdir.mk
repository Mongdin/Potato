################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/ble_core/bluenrg_gap_aci.c \
C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/ble_core/bluenrg_gatt_aci.c \
C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/ble_core/bluenrg_hal_aci.c \
C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/ble_core/osal.c 

OBJS += \
./Application/Common/ble_core/bluenrg_gap_aci.o \
./Application/Common/ble_core/bluenrg_gatt_aci.o \
./Application/Common/ble_core/bluenrg_hal_aci.o \
./Application/Common/ble_core/osal.o 

C_DEPS += \
./Application/Common/ble_core/bluenrg_gap_aci.d \
./Application/Common/ble_core/bluenrg_gatt_aci.d \
./Application/Common/ble_core/bluenrg_hal_aci.d \
./Application/Common/ble_core/osal.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Common/ble_core/bluenrg_gap_aci.o: C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/ble_core/bluenrg_gap_aci.c Application/Common/ble_core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/Common/ble_core/bluenrg_gatt_aci.o: C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/ble_core/bluenrg_gatt_aci.c Application/Common/ble_core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/Common/ble_core/bluenrg_hal_aci.o: C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/ble_core/bluenrg_hal_aci.c Application/Common/ble_core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/Common/ble_core/osal.o: C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Projects/B-L475E-IOT01A/Applications/BLE/Common/ble_core/osal.c Application/Common/ble_core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

