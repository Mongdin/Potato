/*
 * save.c
 *
 *  Created on: 2021. 9. 27.
 *      Author: Mongdin
 */


#include "save.h"
#include "stm32l4xx_hal_flash.h"
#include "stm32l4xx_hal_flash_ex.h"
#include <string.h>

/*
uint8_t* testfunc(){

	static POTATO_Context_t teststruct;
	uint8_t* testaddr = (uint8_t*)&teststruct;
	uint8_t* ret = testaddr;
	for(uint8_t a = 0; a < 96; a++){
		*testaddr = 1;
		testaddr++;
	}
	return ret;
}
*/


save_ret Potato_Save(POTATO_Context_t *POTATO){
	uint64_t data = 0;
	uint8_t i = 0;
	uint64_t * potato_flash_address = Potato_Flash_Address;
	uint64_t *potato_address = (uint64_t *)POTATO;
	uint32_t Page_Error = 0;
	save_ret ret = 0;
	uint32_t primask_bit;

	FLASH_EraseInitTypeDef Erase_t;
	Erase_t.TypeErase = FLASH_TYPEERASE_PAGES;
	Erase_t.Banks = FLASH_BANK_1;
	Erase_t.Page = Potato_Flash_Page;
	Erase_t.NbPages = 1;


	primask_bit = __get_PRIMASK();  /**< backup PRIMASK bit */
	__disable_irq();

	//potato_address = (uint64_t*)testfunc();

	if(HAL_FLASH_Unlock() != HAL_OK) return unlock_error;

	if(HAL_FLASHEx_Erase(&Erase_t, &Page_Error) != HAL_OK){
		return erase_error;
	}

	for(i = 0; i < 12; i++){
		data = 0;
		/*
		for(j = 0; j < 8; j++){
			data[i] |= (*potato_address)<<(7-j)*8;
			potato_address++;
		}*/
		memcpy(&data, potato_address,8);
		potato_address++;

		if(HAL_FLASH_Program(FLASH_TYPEPROGRAM_DOUBLEWORD, (uint32_t)potato_flash_address, data) != HAL_OK) return write_error;
		potato_flash_address++;
	}

	if(HAL_FLASH_Lock() != HAL_OK) return lock_error;
	__set_PRIMASK(primask_bit);

	return save_ok;

}

void Potato_Load(POTATO_Context_t *POTATO){
	memcpy(POTATO,Potato_Flash_Address,96);
}

