################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/P2P_LB_Example/adc.c \
../Application/P2P_LB_Example/crc.c \
D:/git/Potato/BTmode/Projects/B-L475E-IOT01A/Applications/BLE/P2P_LedButton/Src/lb_client_app.c \
D:/git/Potato/BTmode/Projects/B-L475E-IOT01A/Applications/BLE/P2P_LedButton/Src/lb_demo.c \
D:/git/Potato/BTmode/Projects/B-L475E-IOT01A/Applications/BLE/P2P_LedButton/Src/lb_server_app.c \
D:/git/Potato/BTmode/Projects/B-L475E-IOT01A/Applications/BLE/P2P_LedButton/Src/main.c \
../Application/P2P_LB_Example/save.c \
../Application/P2P_LB_Example/stm32l4xx_hal_rcc_ex.c \
D:/git/Potato/BTmode/Projects/B-L475E-IOT01A/Applications/BLE/P2P_LedButton/Src/stm32l4xx_it.c \
D:/git/Potato/BTmode/Projects/B-L475E-IOT01A/Applications/BLE/P2P_LedButton/Src/system_stm32l4xx.c 

OBJS += \
./Application/P2P_LB_Example/adc.o \
./Application/P2P_LB_Example/crc.o \
./Application/P2P_LB_Example/lb_client_app.o \
./Application/P2P_LB_Example/lb_demo.o \
./Application/P2P_LB_Example/lb_server_app.o \
./Application/P2P_LB_Example/main.o \
./Application/P2P_LB_Example/save.o \
./Application/P2P_LB_Example/stm32l4xx_hal_rcc_ex.o \
./Application/P2P_LB_Example/stm32l4xx_it.o \
./Application/P2P_LB_Example/system_stm32l4xx.o 

C_DEPS += \
./Application/P2P_LB_Example/adc.d \
./Application/P2P_LB_Example/crc.d \
./Application/P2P_LB_Example/lb_client_app.d \
./Application/P2P_LB_Example/lb_demo.d \
./Application/P2P_LB_Example/lb_server_app.d \
./Application/P2P_LB_Example/main.d \
./Application/P2P_LB_Example/save.d \
./Application/P2P_LB_Example/stm32l4xx_hal_rcc_ex.d \
./Application/P2P_LB_Example/stm32l4xx_it.d \
./Application/P2P_LB_Example/system_stm32l4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Application/P2P_LB_Example/%.o: ../Application/P2P_LB_Example/%.c Application/P2P_LB_Example/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/P2P_LB_Example/lb_client_app.o: D:/git/Potato/BTmode/Projects/B-L475E-IOT01A/Applications/BLE/P2P_LedButton/Src/lb_client_app.c Application/P2P_LB_Example/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/P2P_LB_Example/lb_demo.o: D:/git/Potato/BTmode/Projects/B-L475E-IOT01A/Applications/BLE/P2P_LedButton/Src/lb_demo.c Application/P2P_LB_Example/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/P2P_LB_Example/lb_server_app.o: D:/git/Potato/BTmode/Projects/B-L475E-IOT01A/Applications/BLE/P2P_LedButton/Src/lb_server_app.c Application/P2P_LB_Example/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/P2P_LB_Example/main.o: D:/git/Potato/BTmode/Projects/B-L475E-IOT01A/Applications/BLE/P2P_LedButton/Src/main.c Application/P2P_LB_Example/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/P2P_LB_Example/stm32l4xx_it.o: D:/git/Potato/BTmode/Projects/B-L475E-IOT01A/Applications/BLE/P2P_LedButton/Src/stm32l4xx_it.c Application/P2P_LB_Example/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/P2P_LB_Example/system_stm32l4xx.o: D:/git/Potato/BTmode/Projects/B-L475E-IOT01A/Applications/BLE/P2P_LedButton/Src/system_stm32l4xx.c Application/P2P_LB_Example/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

