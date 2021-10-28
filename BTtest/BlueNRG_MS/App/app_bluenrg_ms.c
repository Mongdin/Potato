/**
  ******************************************************************************
  * File Name          : app_bluenrg_ms.c
  * Description        : Source file
  *
  ******************************************************************************
  *
  * COPYRIGHT 2021 STMicroelectronics
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software
  * distributed under the License is distributed on an "AS IS" BASIS,
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "app_bluenrg_ms.h"

#include "hci_tl.h"
#include "sample_service.h"
#include "role_type.h"
#include "bluenrg_utils.h"
#include "bluenrg_gatt_server.h"
#include "bluenrg_gap_aci.h"
#include "bluenrg_gatt_aci.h"
#include "bluenrg_hal_aci.h"

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private defines -----------------------------------------------------------*/
/**
 * Define the role here only if it is not already defined in the project options
 * For the CLIENT_ROLE comment the line below
 * For the SERVER_ROLE uncomment the line below
 */
#define SERVER_ROLE

#define BDADDR_SIZE 6

/* Private macros ------------------------------------------------------------*/

/* Private variables ---------------------------------------------------------*/
uint8_t bnrg_expansion_board = IDB05A1; /* at startup, suppose the X-NUCLEO-IDB04A1 is used */
static volatile uint8_t user_button_init_state = 1;
static volatile uint8_t user_button_pressed = 0;

#ifdef SERVER_ROLE
  BLE_RoleTypeDef BLE_Role = SERVER;
#else
  BLE_RoleTypeDef BLE_Role = CLIENT;
#endif

extern volatile uint8_t set_connectable;
extern volatile int     connected;
extern volatile uint8_t notification_enabled;

extern volatile uint8_t end_read_tx_char_handle;
extern volatile uint8_t end_read_rx_char_handle;

/* USER CODE BEGIN PV */

typedef struct{
  uint16_t  POTATO_Svc_Hdle;              /**< Service handle */
  uint16_t  POTATO_SSID_Hdle;             /**< Characteristic handle */
  uint16_t  POTATO_PW_Hdle;
  uint16_t  POTATO_NAME_Hdle;
  uint16_t  POTATO_IP_Hdle;
  uint16_t  POTATO_OP_Hdle;
  uint16_t  POTATO_Save_Hdle;
  uint16_t  POTATO_Adc_Hdle;

}POTATO_Context_t;

POTATO_Context_t POTATO_Context;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
static void User_Process(void);
//static void User_Init(void);

/* USER CODE BEGIN PFP */
const char local_name[] = {AD_TYPE_COMPLETE_LOCAL_NAME, 'B','L','E','T','E','S','T'};
/* USER CODE END PFP */

#if PRINT_CSV_FORMAT
extern volatile uint32_t ms_counter;
/**
 * @brief  This function is a utility to print the log time
 *         in the format HH:MM:SS:MSS (DK GUI time format)
 * @param  None
 * @retval None
 */
void print_csv_time(void){
  uint32_t ms = HAL_GetTick();
  PRINT_CSV("%02ld:%02ld:%02ld.%03ld", (long)(ms/(60*60*1000)%24), (long)(ms/(60*1000)%60), (long)((ms/1000)%60), (long)(ms%1000));
}
#endif

void MX_BlueNRG_MS_Init(void)
{

  /* USER CODE BEGIN SV */

	const char *name = "test";

	uint8_t POTATO_UUID[] = {0x11,0x22,0x33,0x44,0x55,0x66,0x77,0x88,0x99,0xAA,0xBB,0xCC,0xDD,0xEE,0xFF,0x00};
	uint8_t SERVER_BDADDR[] = {0x01,0x02,0x03,0x04,0x05,0x06};
	uint8_t bdaddr[BDADDR_SIZE];

	uint16_t service_handle, dev_name_char_handle, appearance_char_handle;

	hci_init(user_notify,NULL);
	hci_reset();
	HAL_Delay(200);

	BLUENRG_memcpy(bdaddr, SERVER_BDADDR, sizeof(SERVER_BDADDR));

	aci_hal_write_config_data(CONFIG_DATA_PUBADDR_OFFSET, CONFIG_DATA_PUBADDR_LEN, bdaddr);

	aci_gatt_init();

	aci_gap_init_IDB05A1(GAP_PERIPHERAL_ROLE_IDB05A1, 0, 0x07, &service_handle, &dev_name_char_handle, &appearance_char_handle);

	aci_gatt_update_char_value(service_handle, dev_name_char_handle, 0, strlen(name), name);

	aci_gatt_add_serv(UUID_TYPE_128, POTATO_UUID, PRIMARY_SERVICE, 30, &(POTATO_Context.POTATO_Svc_Hdle));

	POTATO_UUID[15] = 0x01;
	aci_gatt_add_char(POTATO_Context.POTATO_Svc_Hdle, UUID_TYPE_128, POTATO_UUID, 31,
					  CHAR_PROP_WRITE_WITHOUT_RESP|CHAR_PROP_READ,
					  ATTR_PERMISSION_NONE, GATT_NOTIFY_ATTRIBUTE_WRITE, 10, 1, &(POTATO_Context.POTATO_SSID_Hdle));

	POTATO_UUID[15] = 0x02;
	aci_gatt_add_char(POTATO_Context.POTATO_Svc_Hdle, UUID_TYPE_128, POTATO_UUID, 31,
					  CHAR_PROP_WRITE_WITHOUT_RESP|CHAR_PROP_READ,
					  ATTR_PERMISSION_NONE, GATT_NOTIFY_ATTRIBUTE_WRITE, 10, 1, &(POTATO_Context.POTATO_PW_Hdle));

	POTATO_UUID[15] = 0x03;
	aci_gatt_add_char(POTATO_Context.POTATO_Svc_Hdle, UUID_TYPE_128, POTATO_UUID, 31,
					  CHAR_PROP_WRITE_WITHOUT_RESP|CHAR_PROP_READ,
					  ATTR_PERMISSION_NONE, GATT_NOTIFY_ATTRIBUTE_WRITE, 10, 1, &(POTATO_Context.POTATO_NAME_Hdle));

	POTATO_UUID[15] = 0x04;
	aci_gatt_add_char(POTATO_Context.POTATO_Svc_Hdle, UUID_TYPE_128, POTATO_UUID, 4,
					  CHAR_PROP_WRITE_WITHOUT_RESP|CHAR_PROP_READ,
					  ATTR_PERMISSION_NONE, GATT_NOTIFY_ATTRIBUTE_WRITE, 10, 1, &(POTATO_Context.POTATO_IP_Hdle));

	POTATO_UUID[15] = 0x05;
	aci_gatt_add_char(POTATO_Context.POTATO_Svc_Hdle, UUID_TYPE_128, POTATO_UUID, 1,
					  CHAR_PROP_WRITE_WITHOUT_RESP|CHAR_PROP_READ,
					  ATTR_PERMISSION_NONE, GATT_NOTIFY_ATTRIBUTE_WRITE, 10, 1, &(POTATO_Context.POTATO_OP_Hdle));

	POTATO_UUID[15] = 0x06;
	aci_gatt_add_char(POTATO_Context.POTATO_Svc_Hdle, UUID_TYPE_128, POTATO_UUID, 2,
					  CHAR_PROP_WRITE_WITHOUT_RESP|CHAR_PROP_READ,
					  ATTR_PERMISSION_NONE, GATT_NOTIFY_ATTRIBUTE_WRITE, 10, 1, &(POTATO_Context.POTATO_Save_Hdle));

	POTATO_UUID[15] = 0x07;
	aci_gatt_add_char(POTATO_Context.POTATO_Svc_Hdle, UUID_TYPE_128, POTATO_UUID, 5,
					  CHAR_PROP_WRITE_WITHOUT_RESP|CHAR_PROP_READ,
					  ATTR_PERMISSION_NONE, GATT_NOTIFY_READ_REQ_AND_WAIT_FOR_APPL_RESP, 10, 1, &(POTATO_Context.POTATO_Adc_Hdle));












  /* USER CODE END SV */


  /* USER CODE BEGIN BlueNRG_MS_Init_PostTreatment */

  /* USER CODE END BlueNRG_MS_Init_PostTreatment */
}

/*
 * BlueNRG-MS background task
 */
void MX_BlueNRG_MS_Process(void)
{
  /* USER CODE BEGIN BlueNRG_MS_Process_PreTreatment */

	tBleStatus ret;

	ret = aci_gap_set_discoverable(ADV_IND, 0, 0, PUBLIC_ADDR, NO_WHITE_LIST_USE, sizeof(local_name), local_name, 0, NULL, 0, 0);


	hci_user_evt_proc();








  /* USER CODE END BlueNRG_MS_Process_PreTreatment */

  //User_Process();
  //hci_user_evt_proc();

  /* USER CODE BEGIN BlueNRG_MS_Process_PostTreatment */

  /* USER CODE END BlueNRG_MS_Process_PostTreatment */
}

/**
 * @brief  Initialize User process.
 *
 * @param  None
 * @retval None
 */
/*
static void User_Init(void)
{
  BSP_PB_Init(BUTTON_KEY, BUTTON_MODE_EXTI);
  BSP_LED_Init(LED2);

  //BSP_COM_Init(COM1);
}
*/
/**
 * @brief  Configure the device as Client or Server and manage the communication
 *         between a client and a server.
 *
 * @param  None
 * @retval None
 */

static void User_Process(void)
{
  if (set_connectable)
  {
    /* Establish connection with remote device */
    Make_Connection();
    set_connectable = FALSE;
    user_button_init_state = BSP_PB_GetState(BUTTON_KEY);
  }

  if (BLE_Role == CLIENT)
  {
    /* Start TX handle Characteristic dynamic discovery if not yet done */
    if (connected && !end_read_tx_char_handle){
      startReadTXCharHandle();
    }
    /* Start RX handle Characteristic dynamic discovery if not yet done */
    else if (connected && !end_read_rx_char_handle){
      startReadRXCharHandle();
    }

    if (connected && end_read_tx_char_handle && end_read_rx_char_handle && !notification_enabled)
    {
      BSP_LED_Off(LED2); //end of the connection and chars discovery phase
      enableNotification();
    }
  }

  /* Check if the User Button has been pushed */
  if (user_button_pressed)
  {
    /* Debouncing */
    HAL_Delay(50);

    /* Wait until the User Button is released */
    while (BSP_PB_GetState(BUTTON_KEY) == !user_button_init_state);

    /* Debouncing */
    HAL_Delay(50);

    if (connected && notification_enabled)
    {
      /* Send a toggle command to the remote device */
      uint8_t data[20] = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H','I','J'};
      sendData(data, sizeof(data));

      //BSP_LED_Toggle(LED2);  /* Toggle the LED2 locally. */
                               /* If uncommented be sure the BSP_LED_Init(LED2)
                                * is called in main().
                                * E.g. it can be enabled for debugging. */
    }

    /* Reset the User Button flag */
    user_button_pressed = 0;
  }
}

/**
  * @brief  BSP Push Button callback
  * @param  Button Specifies the pin connected EXTI line
  * @retval None.
  */
void BSP_PB_Callback(Button_TypeDef Button)
{
  /* Set the User Button flag */
  user_button_pressed = 1;
}

void POTATO_Test_CB(uint16_t handle)
{
	printf("testCB called");
}

void Read_Request_CB(uint16_t handle)
{
	printf("Read_Request_CB");
}
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
