/**
 ******************************************************************************
 * @file    lb_server_app.c
 * @author  MCD Application Team
 * @brief   Led Button End Device Application
 ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; Copyright (c) 2017 STMicroelectronics.
 * All rights reserved.</center></h2>
 *
 * This software component is licensed by ST under Ultimate Liberty license SLA0044,
 * the "License"; You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at:
 *                        http://www.st.com/SLA0044
 *
 ******************************************************************************
 */

/* Includes ------------------------------------------------------------------*/
#include "common.h"
#include "debug.h"

#include "lb_server_app.h"
#include "lb_demo.h"

#include "ble_lib.h"
#include "blesvc.h"
#include "scheduler.h"
#include "stm32l475e_iot01.h"
#include <stdbool.h>

#include "save.h"

extern POTATO_Context_t POTATO_Context;


#if (LB_SERVER != 0) /**< LED BOUTTON END DEVICE APPLICATION  */

/* Private typedef -----------------------------------------------------------*/
typedef struct
{
  uint8_t       Notification_Button_Status; // used to chek if LB Router can received push button information
  LBR_ButtonCharValue_t      ButtonStatusToClient;
  uint16_t connHandleWithLbRouteur; //Smart Phone 1
} LB_End_Dev_Context_t;


volatile save_ret_t ret = 0;


/* Private defines -----------------------------------------------------------*/

/* Private macros ------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/

/**
 * START of Section BLE_APP_CONTEXT
 */
static LB_End_Dev_Context_t LB_End_Dev_Context;

/**
 * END of Section BLE_APP_CONTEXT
 */

/* Global variables ----------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Functions Definition ------------------------------------------------------*/
/* Private functions ----------------------------------------------------------*/
/* Public functions ----------------------------------------------------------*/



void LBR_Notification(LBR_ConnHandle_Not_evt_t *pNotification)
{
  switch(pNotification->LBR_Evt_Opcode)
  {
    case LB_CLIENT_CONN_HANDLE_EVT :
      LB_End_Dev_Context.connHandleWithLbRouteur = pNotification->ConnectionHandle;
      break;

    case LB_CLIENT_DISCON_EVT_EVT :
      LB_End_Dev_Context.connHandleWithLbRouteur =  0x00;
      SCH_SetTask(CFG_IdleTask_StartAdv);
      break;

    default:
      break;
  }
  return;
}

void LBSAPP_Init(void)
{
  /**
   * Initialize LedButton Service
   */
  LB_End_Dev_Context.Notification_Button_Status=0; 
  LB_End_Dev_Context.connHandleWithLbRouteur =  0x00;
 // LB_End_Dev_Context.LedControlEndDevice1.Device_Led_Selection=0x01; // device1
//  LB_End_Dev_Context.LedControlEndDevice1.Led1Control=0x00; //led OFF
  LB_End_Dev_Context.ButtonStatusToClient.Device_Button_Selection=0x01; //Device1
  LB_End_Dev_Context.ButtonStatusToClient.ButtonStatus=0x00;

  return;
}

void LB_App_Button_Trigger_Received(void)
{
  
  //UPDATE BUTTON CHARACTERISTICS VALUES

  if(LB_End_Dev_Context.ButtonStatusToClient.ButtonStatus==0x01){
  LB_End_Dev_Context.ButtonStatusToClient.ButtonStatus=0x00;}
  else {
  LB_End_Dev_Context.ButtonStatusToClient.ButtonStatus=0x01;  
  }
  LB_End_Dev_Context.ButtonStatusToClient.Device_Button_Selection=0x01; //Button1 pushed
  APPL_MESG_DBG("\r\n\r ");
  APPL_MESG_DBG("-- APPLICATION : BUTTON PUSHED - CHECK NOTIFICATION \n ");
 
   if(LB_End_Dev_Context.Notification_Button_Status){ 
    APPL_MESG_DBG("-- APPLICATION : INFORM ROUTEUR BUTTON 1 PUSHED \n ");
    BLE_SVC_LedButton_Update_Char(BUTTON_CHAR_UUID, (uint8_t *)&LB_End_Dev_Context.ButtonStatusToClient);
   } else {
    APPL_MESG_DBG("-- APPLICATION : CAN'T INFORM ROUTEUR -  NOTIFICATION DISABLED\n "); 
   }

  return;
}


/* ******************************************************************************/
/* ******  Exported functions to OVERLOAD __weak defined in /Common modules *****/
/* ******************************************************************************/

/**
  * @brief  This function implement the application action when app notification
  *         It OVERLOADS the __WEAK function defined in lbs_stm.h/c
  *         When this function is called meas that the "Button characteristic"
  *         has been enabled or disabled. The application can take 
  *         correspondent action
  * @param  pNotification: LBS notification.
  * @retval None
 */ 

void whynotwork(uint8_t *POTATO, LBS_App_Notification_evt_t *pNotification, uint8_t is_string)
{
	uint8_t i = 0;
	for(; i < pNotification->DataTransfered.Length; i++)
	{
		POTATO[i] = pNotification->DataTransfered.pPayload[i];
	}
	if(is_string) POTATO[i] = '\0';
}

void LBS_App_Notification(LBS_App_Notification_evt_t *pNotification)
{
	//uint8_t buffer[]
  switch(pNotification->LBS_Evt_Opcode)
  {
  /*
    case BUTTON_NOTIFY_ENABLED_EVT:
      LB_End_Dev_Context.Notification_Button_Status = 1;
      APPL_MESG_DBG("-- APPLICATION END DEVICE : BUTTON NOTIFICATION ENABLED\n");      
      break;

    case BUTTON_NOTIFY_DISABLED_EVT:
      LB_End_Dev_Context.Notification_Button_Status = 0;
      APPL_MESG_DBG("-- APPLICATION END DEVICE : BUTTON NOTIFICATION DISABLED\n");
      break;

    case ST_SVC_LED_READ_EVT:
      //Create Function to respond to Client-LB Routeur the status of each Led
      break;

    case ST_SVC_LED_WRITE_EVT:
      // create function to switch ON/OFF Leds on selected device.
      if(pNotification->DataTransfered.pPayload[0] == 0x01){ 
        if(pNotification->DataTransfered.pPayload[1] == 0x01)
        {
          BSP_LED_On(LED2);
          APPL_MESG_DBG("-- APPLICATION END DEVICE 1 : LED1 ON\n"); 
        }
        if(pNotification->DataTransfered.pPayload[1] == 0x00)
        {
          BSP_LED_Off(LED2);
          APPL_MESG_DBG("-- APPLICATION END DEVICE 1 : LED1 OFF\n"); 
        }
        break;
        */
    case POTATO_SSID_EVT:
    	whynotwork(POTATO_Context.POTATO_SSID,pNotification,1);
    	//aci_gatt_write_charac_value(0xFFFE, attr_hdle, 30, POTATO_Context.POTATO_SSID);
    	//ret = Potato_Save(&POTATO_Context);
    	break;
    case POTATO_PW_EVT:
    	whynotwork(POTATO_Context.POTATO_PW,pNotification,1);
    	break;
    case POTATO_NAME_EVT:
    	whynotwork(POTATO_Context.POTATO_NAME,pNotification,1);
    	break;
    case POTATO_IP_EVT:
    	whynotwork(POTATO_Context.POTATO_IP,pNotification,0);
    	break;
    case POTATO_OP_EVT:
    	whynotwork(POTATO_Context.POTATO_OP,pNotification,0);
    	break;
    case POTATO_SAVE_EVT:
    	switch(pNotification->DataTransfered.pPayload[0]) {

    	case potato_save_opcode :
    		ret = Potato_Save(&POTATO_Context);
    		break;

    	case potato_load_opcode :
    		ret = Potato_Load(&POTATO_Context);
    		break;

    	case potato_backup_to_normal_opcode :
    		ret = Potato_Backup_Load();
			break;

    	case potato_erase_normal_opcode :
    		ret = Potato_Erase(normal);
    		break;

    	case potato_erase_both_opcode :
    		ret = Potato_Erase(both);
    		break;

    	case potato_dummy_backup_opcode :
    		ret = Potato_Dummy_Backup();
    		break;

    	}





      break;

    default:
      break;
  }
  //ret = Potato_Save(&POTATO_Context);
  return;
}

#endif //END_DEVICE

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/