/*
 * save.h
 *
 *  Created on: 2021. 9. 27.
 *      Author: Mongdin
 */

#ifndef APPLICATION_P2P_LB_EXAMPLE_SAVE_H_
#define APPLICATION_P2P_LB_EXAMPLE_SAVE_H_

#include <stdint.h>
#include "stm32l4xx_hal.h"

#define Potato_Flash_Address ((uint8_t *)0x0807F000)
#define Potato_Flash_Backup_Address ((uint8_t *)0x0807F800)

#define Potato_Flash_CRC_Address ((uint8_t *)(Potato_Flash_Address + Potato_Data_Length_Bytes_without_CRC))
#define Potato_Flash_Backup_CRC_Address ((uint8_t *)(Potato_Flash_Backup_Address + Potato_Data_Length_Bytes_without_CRC))

#define Potato_Flash_Page 254
#define Potato_Flash_Backup_Page 255

#define Potato_Data_Length_Bytes 102
#define Potato_Data_Length_Bytes_without_CRC 100


typedef enum {
	save_ok,
	erase_error,
	write_error,
	unlock_error,
	lock_error,
	load_error,
	crc_error,
}save_ret_t;

typedef enum{
	normal = 1,
	both = 2,
}erase_page_t;

typedef enum{
	potato_save_opcode,
	potato_load_opcode,
	potato_backup_to_normal_opcode,
	potato_erase_normal_opcode,
	potato_erase_both_opcode,
	potato_dummy_backup_opcode,
}potato_save_opcode_t;

typedef struct
{
	uint8_t POTATO_SSID[31];
	uint8_t POTATO_PW[31];
	uint8_t POTATO_NAME[31];
	uint8_t POTATO_IP[4];
	uint8_t POTATO_OP[3];
	uint8_t POTATO_CRC[2];
	//uint8_t POTATO_Period;
	//bool POTATO_CS_EN;
}POTATO_Context_t;





save_ret_t Potato_Save(POTATO_Context_t *POTATO);
save_ret_t Potato_Load(POTATO_Context_t *POTATO);
save_ret_t Potato_Erase(erase_page_t pages);
save_ret_t Potato_Backup_Load(void);
save_ret_t Potato_Dummy_Backup(void);

#endif /* APPLICATION_P2P_LB_EXAMPLE_SAVE_H_ */
