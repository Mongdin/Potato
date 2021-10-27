/**
  @page SampleApp sample application for BlueNRG-MS/BlueNRG-M0 Expansion Board and STM32 Nucleo Boards
  
  @verbatim
  ******************** (C) COPYRIGHT 2014 STMicroelectronics *******************
  * @file    readme.txt 
  * @author  CL/AST  
  * @version V0.0.1
  * @date    19-May-2014
  * @brief   Description of the BlueNRG-MS/BlueNRG-M0 sample application.
  ******************************************************************************
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  @endverbatim

@par Example Description 

This application shows how to simply use the BLE Stack creating a client and server connection.
------------------------------------
WARNING: When starting the project from Example Selector in STM32CubeMX and regenerating it
from ioc file, you may face a build issue. To solve it, if you started the project for the
Nucleo-L476RG board, remove from the IDE project the file stm32l4xx_nucleo.c in the Application/User
virtual folder and delete, from Src and Inc folders, the files: stm32l4xx_nucleo.c, stm32l4xx_nucleo.h
and stm32l4xx_nucleo_errno.h.
The same operations apply if you starts the project for another STM32 Nucleo board (e.g. for
Nucleo-L053R8, the files to be removed are stm32l0xx_nucleo.c, stm32l0xx_nucleo.c, stm32l0xx_nucleo.h
and stm32l0xx_nucleo_errno.h).
------------------------------------
To test this application you need two STM32 Nucleo boards with their respective
BlueNRG-MS/BlueNRG-M0 STM32 expansion boards. One board needs to be configured
as Server-Peripheral role, while the other needs to be configured as Client-Central
role.
Before flashing the boards, please make sure to use the right configuration by selecting
it from the menu options of the toolchain.

Keeping either defined or undefined the #define SERVER_ROLE, in file app_bluenrg_ms.c, the
target can be respectively configured either as SERVER or as CLIENT.
 - Program the CLIENT on one STM32 Nucleo board, with BlueNRG-MS/BlueNRG-M0 STM32 expansion board,
   and reset it. 
 - Program the SERVER on a second STM32 Nucleo board, with BlueNRG-MS/BlueNRG-M0 STM32 expansion
   board, and reset it. 
 - After establishing the connection between the two boards (when the LED2 on the
   CLIENT turns off),
   by pressing the USER button on one board, the LD2 LED on the other one gets toggled
   and viceversa.
 - If you have only one STM32 Nucleo board, you can program it as SERVER and use as CLIENT
   the BLE IOT app for Android devices available on the Play Store at
   https://play.google.com/store/apps/details?id=com.stmicro.bleiot 
 
@par Keywords

BLE, Master, Slave, Central, Peripheral, SPI, BlueNRG-M0, BlueNRG-MS

@par Hardware and Software environment

  - This example runs on STM32 Nucleo boards with X-NUCLEO-IDB05A2 STM32 expansion board
    (the X-NUCLEO-IDB05A1 expansion board can be also used)
  - This example has been tested with STMicroelectronics:
    - NUCLEO-F401RE RevC board  
    - NUCLEO-L053R8 RevC board
    - NUCLEO-L476RG RevC board
    and can be easily tailored to any other supported device and development board.
    This example runs also on the NUCLEO-F411RE RevC board, even if the chip could
    be not exploited at its best since the projects are configured for the
    NUCLEO-F401RE target board.

ADDITIONAL_BOARD : X-NUCLEO-IDB05A2 https://www.st.com/content/st_com/en/products/ecosystems/stm32-open-development-environment/stm32-nucleo-expansion-boards/stm32-ode-connect-hw/x-nucleo-idb05a2.html
ADDITIONAL_COMP : BlueNRG-M0 https://www.st.com/content/st_com/en/products/wireless-connectivity/short-range/bluetooth-low-energy-network-co-processors/bluenrg-m0.html
    
@par How to use it? 

In order to make the program work, you must do the following:
 - WARNING: before opening the project with any toolchain be sure your folder
   installation path is not too in-depth since the toolchain may report errors
   after building.
 - Open STM32CubeIDE (this firmware has been successfully tested with Version 1.6.1).
   Alternatively you can use the Keil uVision toolchain (this firmware
   has been successfully tested with V5.32.0) or the IAR toolchain (this firmware has 
   been successfully tested with Embedded Workbench V8.50.9).
 - Rebuild all files and load your image into target memory.
 - Run the example.
 - Alternatively, you can download the pre-built binaries in "Binary" 
   folder included in the distributed package.


 * <h3><center>&copy; COPYRIGHT STMicroelectronics</center></h3>
 */
