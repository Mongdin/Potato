################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Drivers/BSP/B-L475E-IOT01/stm32l475e_iot01.c 

OBJS += \
./Drivers/BSP/STM32L475x_IoT_Discovery/stm32l475e_iot01.o 

C_DEPS += \
./Drivers/BSP/STM32L475x_IoT_Discovery/stm32l475e_iot01.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32L475x_IoT_Discovery/stm32l475e_iot01.o: C:/Users/Mongdin/Desktop/temp/STM32CubeL4-master/Drivers/BSP/B-L475E-IOT01/stm32l475e_iot01.c Drivers/BSP/STM32L475x_IoT_Discovery/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32L475xx -DUSE_STM32L475_IOT_DISCO -DUSE_HAL_DRIVER -DSET_L2CAP_CONN_UPD_REQ_COMMAND -DENABLE_SPI_FIX -DBLUENRG_MS -c -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../../../Drivers/BSP/B-L475E-IOT01 -I../../../../Common/ble_core/ -I../../../../Common/ble_services/ -I../../../../Common/debug/ -I../../../../Common/hw/ -I../../../../Common/tl/ -I../../../../Common/utilities/ -I../../../../Common/ -I../../../Inc/ -Os -ffunction-sections -Wall -Wno-strict-aliasing -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

