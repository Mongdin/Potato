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

#define Potato_Flash_Address ((uint64_t *)0x0807F000)
#define Potato_Flash_Page 254

typedef enum {
	save_ok,
	erase_error,
	write_error,
	unlock_error,
	lock_error,
}save_ret;



typedef struct
{
	uint8_t POTATO_SSID[30];
	uint8_t POTATO_PW[30];
	uint8_t POTATO_NAME[30];
	uint8_t POTATO_IP[4];
	uint8_t POTATO_OP[2];
	//uint8_t POTATO_Period;
	//bool POTATO_CS_EN;
}POTATO_Context_t;





save_ret Potato_Save(POTATO_Context_t *POTATO);
void Potato_Load(POTATO_Context_t *POTATO);

#endif /* APPLICATION_P2P_LB_EXAMPLE_SAVE_H_ */
