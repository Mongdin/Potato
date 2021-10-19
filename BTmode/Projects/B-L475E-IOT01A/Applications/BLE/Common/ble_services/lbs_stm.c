/**
 ******************************************************************************
 * @file    lbs_stm.c
 * @author  MCD Application Team
 * @brief   Leds Buttons Service (Custom STM)
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
#include "svc_private.h"
#include "ble_lib.h"
#include "debug.h"
#include "svc_ctl.h"

#include "lbs_stm.h"
#include "adc.h"
#include "string.h"

/* Private typedef -----------------------------------------------------------*/
typedef struct{
  uint16_t  LedButtonSvcHdle;              /**< Service handle */
  uint16_t  LedsCharHdle;                  /**< Characteristic handle */
  uint16_t  ButtonsCharHdle;               /**< Characteristic handle */

}LedButtonContext_t;

typedef struct{
  uint16_t  testing_Svc_Hdle;              /**< Service handle */
  uint16_t  testing_SSID_Hdle;                  /**< Characteristic handle */
  uint16_t  testing_PW_Hdle;
  uint16_t  testing_NAME_Hdle;
  uint16_t  testing_IP_Hdle;
  uint16_t  testing_OP_Hdle;				  /**< Characteristic handle */
  uint16_t  testing_Save_Hdle;
  uint16_t  testing_Adc_Hdle;

}testingtestContext_t;


/* Private defines -----------------------------------------------------------*/
/* Private macros ------------------------------------------------------------*/

/* Private variables ---------------------------------------------------------*/
/**
 * START of Section BLE_BLUENRG_DRIVER_CONTEXT
 */
static LedButtonContext_t aLedButtonContext;
static testingtestContext_t testingtestContext;
uint8_t adc_buffer[5] = {0,};
long adc_val = 0;
/**
 * END of Section BLE_BLUENRG_DRIVER_CONTEXT
 */
/* Private function prototypes -----------------------------------------------*/
//static tBleStatus Button_Update_Char(LED_BUTTON_Data_t *pDataValue);
static SVCCTL_EvtAckStatus_t LedButton_Event_Handler(void *pckt);


/* Functions Definition ------------------------------------------------------*/
/* Private functions ----------------------------------------------------------*/


/**
 * @brief  Event handler
 * @param  Event: Address of the buffer holding the Event
 * @retval Ack: Return whether the Event has been managed or not
 */

static SVCCTL_EvtAckStatus_t LedButton_Event_Handler(void *Event)
{
  SVCCTL_EvtAckStatus_t return_value;
  hci_event_pckt *event_pckt;
  evt_blue_aci *blue_evt;
  evt_gatt_attr_modified    * attribute_modified;
  LBS_App_Notification_evt_t Notification;
  /////////////////////////////////////////
  adc_val = 0;

  ////////////////////////////////
  return_value = SVCCTL_EvtNotAck;
  event_pckt = (hci_event_pckt *)(((hci_uart_pckt*)Event)->data);

  switch(event_pckt->evt)
  {
    case EVT_VENDOR:
    {
      blue_evt = (evt_blue_aci*)event_pckt->data;
      switch(blue_evt->ecode)
      {
        case EVT_BLUE_GATT_ATTRIBUTE_MODIFIED:
       {
          attribute_modified = (evt_gatt_attr_modified*)blue_evt->data;
            /*
          if(attribute_modified->attr_handle == (aLedButtonContext.ButtonsCharHdle + 2))
            {

                //Descriptor handle

              return_value = SVCCTL_EvtAck;

              // Notify to application

              if(attribute_modified->att_data[0] & COMSVC_Notification)
              {
               // APPL_MESG_DBG("Notification enabled\n");
                Notification.LBS_Evt_Opcode = BUTTON_NOTIFY_ENABLED_EVT;
                LBS_App_Notification(&Notification);

              }
              else
              {
               // APPL_MESG_DBG("Notification disabled\n");
                Notification.LBS_Evt_Opcode = BUTTON_NOTIFY_DISABLED_EVT;

                LBS_App_Notification(&Notification);

              }
            }
            
            if(attribute_modified->attr_handle == (aLedButtonContext.LedsCharHdle + 1))
            {
              //value handle
              APPL_MESG_DBG("-- GATT : LED CONFIGURATION RECEIVED\n");
              Notification.LBS_Evt_Opcode = ST_SVC_LED_WRITE_EVT;
              Notification.DataTransfered.Length=attribute_modified->data_length;
              Notification.DataTransfered.pPayload=attribute_modified->att_data;
              LBS_App_Notification(&Notification);  
            }
            */
            ////////////////////////////////////////////////////////////////////////////////////
            if(attribute_modified->attr_handle == (testingtestContext.testing_SSID_Hdle + 1))
                        {
                          //value handle
                          APPL_MESG_DBG("-- GATT : RECEIVED\n");
                          Notification.LBS_Evt_Opcode = POTATO_SSID_EVT;
                          Notification.DataTransfered.Length=attribute_modified->data_length;
                          Notification.DataTransfered.pPayload=attribute_modified->att_data;
                          LBS_App_Notification(&Notification);

                        }

            if(attribute_modified->attr_handle == (testingtestContext.testing_PW_Hdle + 1))
                        {
                          //value handle
                          APPL_MESG_DBG("-- GATT : RECEIVED\n");
                          Notification.LBS_Evt_Opcode = POTATO_PW_EVT;
                          Notification.DataTransfered.Length=attribute_modified->data_length;
                          Notification.DataTransfered.pPayload=attribute_modified->att_data;
                          LBS_App_Notification(&Notification);
                        }

            if(attribute_modified->attr_handle == (testingtestContext.testing_NAME_Hdle + 1))
                        {
                          //value handle
                          APPL_MESG_DBG("-- GATT : RECEIVED\n");
                          Notification.LBS_Evt_Opcode = POTATO_NAME_EVT;
                          Notification.DataTransfered.Length=attribute_modified->data_length;
                          Notification.DataTransfered.pPayload=attribute_modified->att_data;
                          LBS_App_Notification(&Notification);
                        }

            if(attribute_modified->attr_handle == (testingtestContext.testing_IP_Hdle + 1))
                        {
                          //value handle
                          APPL_MESG_DBG("-- GATT : RECEIVED\n");
                          Notification.LBS_Evt_Opcode = POTATO_IP_EVT;
                          Notification.DataTransfered.Length=attribute_modified->data_length;
                          Notification.DataTransfered.pPayload=attribute_modified->att_data;
                          LBS_App_Notification(&Notification);
                        }

            if(attribute_modified->attr_handle == (testingtestContext.testing_OP_Hdle + 1))
                        {
                          //value handle
                          APPL_MESG_DBG("-- GATT : RECEIVED\n");
                          Notification.LBS_Evt_Opcode = POTATO_OP_EVT;
                          Notification.DataTransfered.Length=attribute_modified->data_length;
                          Notification.DataTransfered.pPayload=attribute_modified->att_data;
                          LBS_App_Notification(&Notification);
                        }
            if(attribute_modified->attr_handle == (testingtestContext.testing_Save_Hdle + 1))
                        {
                          //value handle
                          APPL_MESG_DBG("-- GATT : RECEIVED\n");
                          Notification.LBS_Evt_Opcode = POTATO_SAVE_EVT;
                          Notification.DataTransfered.Length=attribute_modified->data_length;
                          Notification.DataTransfered.pPayload=attribute_modified->att_data;
                          LBS_App_Notification(&Notification);
                        }

            if(attribute_modified->attr_handle == (testingtestContext.testing_Adc_Hdle + 1))
                        {
                          //value handle
            			  /*
                          APPL_MESG_DBG("-- GATT : RECEIVED\n");
                          Notification.LBS_Evt_Opcode = POTATO_SAVE_EVT;
                          Notification.DataTransfered.Length=attribute_modified->data_length;
                          Notification.DataTransfered.pPayload=attribute_modified->att_data;
                          LBS_App_Notification(&Notification);
                          */

            			  adc_val = Potato_Readadc();
            			  sprintf(adc_buffer,"%ld",adc_val);
            			  aci_gatt_update_char_value(testingtestContext.testing_Svc_Hdle, testingtestContext.testing_Adc_Hdle, 0, strlen(adc_buffer), adc_buffer);


                        }
            ////////////////////////////////////////////////////////////////////////////////////testing_Save_Hdle

          
        }
        break;

        default:
          break;
      }
    }
    break; /* HCI_EVT_VENDOR_SPECIFIC */

    default:
      break;
  }

  return(return_value);
}/* end SVCCTL_EvtAckStatus_t */


/* Public functions ----------------------------------------------------------*/

/**
 * @brief  Service initialization
 * @param  None
 * @retval None
 */
void LBS_STM_Init(void)
{
  uint16_t uuid;
  /**
   *  Register the event handler to the BLE controller
   */
  SVCCTL_RegisterSvcHandler(LedButton_Event_Handler);
  
    /**
     *  Led Button Service
     *
     * Max_Attribute_Records = 2*no_of_char + 1
     * service_max_attribute_record = 1 for Led Button service +
     *                                2 for Led characteristic +
     *                                2 for Button characteristic +
     *                                1 for client char configuration descriptor +
     *                                
     */

  ///////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////
  	  uuid = testingtest_SVC_UUID;
      aci_gatt_add_serv(UUID_TYPE_16,
                        (const uint8_t *) &uuid,
                        PRIMARY_SERVICE,
                        20,
                        &(testingtestContext.testing_Svc_Hdle));

      uuid = testingtest_SSID_UUID;
      aci_gatt_add_char(testingtestContext.testing_Svc_Hdle,
                            UUID_TYPE_16,
                            (const uint8_t *) &uuid ,
                            30,
                            CHAR_PROP_WRITE_WITHOUT_RESP|CHAR_PROP_READ,
                            ATTR_PERMISSION_NONE,
                            GATT_NOTIFY_ATTRIBUTE_WRITE, /* gattEvtMask */
                            10, /* encryKeySize */
                            1, /* isVariable */
                            &(testingtestContext.testing_SSID_Hdle));

      uuid = testingtest_PW_UUID;
      aci_gatt_add_char(testingtestContext.testing_Svc_Hdle,
                            UUID_TYPE_16,
                            (const uint8_t *) &uuid ,
                            30,
                            CHAR_PROP_WRITE_WITHOUT_RESP|CHAR_PROP_READ,
                            ATTR_PERMISSION_NONE,
                            GATT_NOTIFY_ATTRIBUTE_WRITE, /* gattEvtMask */
                            10, /* encryKeySize */
                            1, /* isVariable */
                            &(testingtestContext.testing_PW_Hdle));

      uuid = testingtest_NAME_UUID;
      aci_gatt_add_char(testingtestContext.testing_Svc_Hdle,
                            UUID_TYPE_16,
                            (const uint8_t *) &uuid ,
                            30,
                            CHAR_PROP_WRITE_WITHOUT_RESP|CHAR_PROP_READ,
                            ATTR_PERMISSION_NONE,
                            GATT_NOTIFY_ATTRIBUTE_WRITE, /* gattEvtMask */
                            10, /* encryKeySize */
                            1, /* isVariable */
                            &(testingtestContext.testing_NAME_Hdle));

      uuid = testingtest_IP_UUID;
      aci_gatt_add_char(testingtestContext.testing_Svc_Hdle,
                            UUID_TYPE_16,
                            (const uint8_t *) &uuid ,
                            4,
                            CHAR_PROP_WRITE_WITHOUT_RESP|CHAR_PROP_READ,
                            ATTR_PERMISSION_NONE,
                            GATT_NOTIFY_ATTRIBUTE_WRITE, /* gattEvtMask */
                            10, /* encryKeySize */
                            1, /* isVariable */
                            &(testingtestContext.testing_IP_Hdle));

      uuid = testingtest_OP_UUID;
      aci_gatt_add_char(testingtestContext.testing_Svc_Hdle,
                            UUID_TYPE_16,
                            (const uint8_t *) &uuid ,
                            3,
                            CHAR_PROP_WRITE_WITHOUT_RESP|CHAR_PROP_READ,
                            ATTR_PERMISSION_NONE,
                            GATT_NOTIFY_ATTRIBUTE_WRITE, /* gattEvtMask */
                            10, /* encryKeySize */
                            1, /* isVariable */
                            &(testingtestContext.testing_OP_Hdle));
      uuid = testingtest_Save_UUID;
      aci_gatt_add_char(testingtestContext.testing_Svc_Hdle,
                                  UUID_TYPE_16,
                                  (const uint8_t *) &uuid ,
                                  1,
								  CHAR_PROP_WRITE_WITHOUT_RESP|CHAR_PROP_READ,
								  ATTR_PERMISSION_NONE,
								  GATT_NOTIFY_ATTRIBUTE_WRITE, /* gattEvtMask */
                                  10, /* encryKeySize */
                                  1, /* isVariable */
                                  &(testingtestContext.testing_Save_Hdle));

      uuid = testinttest_Adc_UUID;
      aci_gatt_add_char(testingtestContext.testing_Svc_Hdle,
                                  UUID_TYPE_16,
                                  (const uint8_t *) &uuid ,
                                  5,
								  CHAR_PROP_NOTIFY|CHAR_PROP_WRITE_WITHOUT_RESP,
								  ATTR_PERMISSION_NONE,
								  GATT_NOTIFY_ATTRIBUTE_WRITE, /* gattEvtMask */
                                  10, /* encryKeySize */
                                  1, /* isVariable */
                                  &(testingtestContext.testing_Adc_Hdle));

      //aci_gatt_write_charac_value(conn_handle, attr_handle, value_len, attr_value)

  ///////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////
    uuid = LED_BUTTON_SERVICE_UUID;
    aci_gatt_add_serv(UUID_TYPE_16,
                      (const uint8_t *) &uuid,
                      PRIMARY_SERVICE,
                      6,
                      &(aLedButtonContext.LedButtonSvcHdle));

    /**
     *  Add LED Characteristic
     */
    uuid = LED_CHAR_UUID;
   
    aci_gatt_add_char(aLedButtonContext.LedButtonSvcHdle,
                      UUID_TYPE_16,
                      (const uint8_t *) &uuid ,
                      2,                                   
                      CHAR_PROP_WRITE_WITHOUT_RESP|CHAR_PROP_READ,
                      ATTR_PERMISSION_NONE,
                      GATT_NOTIFY_ATTRIBUTE_WRITE, /* gattEvtMask */
                      10, /* encryKeySize */
                      1, /* isVariable */
                      &(aLedButtonContext.LedsCharHdle));

    /**
     *   Add Button Characteristic
     */
    uuid = BUTTON_CHAR_UUID;
    aci_gatt_add_char(aLedButtonContext.LedButtonSvcHdle,
                      UUID_TYPE_16,
                      (const uint8_t *) &uuid ,
                      2,
                      CHAR_PROP_NOTIFY,
                      ATTR_PERMISSION_NONE,
                      GATT_NOTIFY_ATTRIBUTE_WRITE, /* gattEvtMask */
                      10, /* encryKeySize */
                      1, /* isVariable: 1 */
                      &(aLedButtonContext.ButtonsCharHdle));
    
    APPL_MESG_DBG("-- Led Button Service (LBS) is added Successfully %04X\n", 
                 aLedButtonContext.LedButtonSvcHdle);

  return;
}

/**
 * @brief  Characteristic update
 * @param  UUID: UUID of the characteristic
 * @param  Service_Instance: Instance of the service to which the characteristic belongs
 * 
 */
tBleStatus BLE_SVC_LedButton_Update_Char(uint16_t UUID, uint8_t *pPayload) //LED_BUTTON_Data_t *pDataValue)
{
  tBleStatus result = BLE_STATUS_INVALID_PARAMS;
  switch(UUID)
  {
    case BUTTON_CHAR_UUID:
      
     result = aci_gatt_update_char_value(aLedButtonContext.LedButtonSvcHdle,
                             aLedButtonContext.ButtonsCharHdle,
                              0, /* charValOffset */
                             2, /* charValueLen */
                             (const uint8_t *)  pPayload);
    
      break;

    default:
      break;
  }

  return result;
}/* end LBS_STM_Init() */


/* __WEAK functions: The application can overload this function  if needed ----*/
/* ----------------------------------------------------------------------------*/

/**
  * @brief  Calling this function informs the application if the "Button characteristic"
  *         is enabled or disabled, such the client knows when it can receive the
  *         notification byy the server  
  *         The function should be implemented by the application
  *         OVERLOADING this one (which is __weak).
  *         Here just an example
  * @param  pNotification: LBS notification.
  * @retval None
 */ 

__weak void LBS_App_Notification(LBS_App_Notification_evt_t *pNotification)
{
  switch(pNotification->LBS_Evt_Opcode)
  {
    case BUTTON_NOTIFY_ENABLED_EVT:
      // Application to fill this code
      break;

    case BUTTON_NOTIFY_DISABLED_EVT:
      // Application to fill this code
      break;

    case ST_SVC_LED_READ_EVT:
      // Application to fill this code
      //Create Function to respond to Client-LB Routeur the status of each Led
      break;

    case ST_SVC_LED_WRITE_EVT:
      // Application to fill this code
      // create function to switch ON/OFF Leds on selected device.
      break;

    default:
      break;
  }
  return;
}


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
