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
#include "crc.h"

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


save_ret_t Potato_Save(POTATO_Context_t *POTATO){
	uint64_t data = 0;
	uint8_t i = 0;
	uint16_t crcval = 0;
	//uint64_t *potato_flash_address = (uint64_t *)Potato_Flash_Address;
	//uint64_t *potato_address = (uint64_t *)POTATO;
	uint64_t *dest_address = (uint64_t *)Potato_Flash_Address;
	uint64_t *dest_Backup_address = (uint64_t *)Potato_Flash_Backup_Address;
	uint64_t *source_address = (uint64_t *)POTATO;

	uint32_t Page_Error = 0;
	uint32_t primask_bit;
	save_ret_t ret = 0;

	FLASH_EraseInitTypeDef Erase_t;
	Erase_t.TypeErase = FLASH_TYPEERASE_PAGES;
	Erase_t.Banks = FLASH_BANK_1;
	Erase_t.Page = Potato_Flash_Page;
	Erase_t.NbPages = 2;


	primask_bit = __get_PRIMASK();  /**< backup PRIMASK bit */
	__disable_irq();

	//CRC ///////////////////////////////////////////////////////////////////

	crcval = crcSlow((uint8_t*)POTATO, Potato_Data_Length_Bytes_without_CRC);
	POTATO->POTATO_CRC[0] = (crcval&0xFF00)>>8;
	POTATO->POTATO_CRC[1] = crcval&0xFF;

	/////////////////////////////////////////////////////////////////////////

	if(HAL_FLASH_Unlock() != HAL_OK) {
		ret = unlock_error;
		return ret;
	}

	if(HAL_FLASHEx_Erase(&Erase_t, &Page_Error) != HAL_OK){
		ret = erase_error;
		return ret;
	}

	for(i = 0; i < 13; i++){
		data = 0;
		/*
		for(j = 0; j < 8; j++){
			data[i] |= (*potato_address)<<(7-j)*8;
			potato_address++;
		}*/
		memcpy(&data, (source_address + i),8);

		//data = 0x1010101010101010;

		if(HAL_FLASH_Program(FLASH_TYPEPROGRAM_DOUBLEWORD, (uint32_t)(dest_address + i), data) != HAL_OK) {
			ret = write_error;
			return ret;
		}

		//data = 0x1010101010101010;

		if(HAL_FLASH_Program(FLASH_TYPEPROGRAM_DOUBLEWORD, (uint32_t)(dest_Backup_address + i), data) != HAL_OK) {
			ret = write_error;
			return ret;
		}

	}

	if(HAL_FLASH_Lock() != HAL_OK){
		ret = lock_error;
		return ret;
	}
	__set_PRIMASK(primask_bit);

	return save_ok;

}

save_ret_t Potato_Load(POTATO_Context_t *POTATO){

	save_ret_t ret = 0;
	uint16_t crcval = 0;
	uint8_t temp[102] = {0,};
	//uint16_t saved_crcval = 0;
	//uint8_t *normal_crc_address = Potato_Flash_CRC_Address;
	//uint8_t *backup_crc_address = Potato_Flash_Backup_CRC_Address;

	memcpy(temp, Potato_Flash_Address,Potato_Data_Length_Bytes);


	//saved_crcval = ((POTATO->POTATO_CRC[0])<<8) | POTATO->POTATO_CRC[1];
	crcval = crcSlow(temp, Potato_Data_Length_Bytes);
	if(crcval == 0){
		memcpy(POTATO, Potato_Flash_Address,Potato_Data_Length_Bytes);
		ret = save_ok;
		return ret;
	}

	else {
		memcpy(temp, Potato_Flash_Backup_Address, Potato_Data_Length_Bytes);

		//saved_crcval = ((POTATO->POTATO_CRC[0])<<8) | POTATO->POTATO_CRC[1];
		crcval = crcSlow(temp, Potato_Data_Length_Bytes);

		if(crcval == 0){
			memcpy(POTATO, Potato_Flash_Backup_Address,Potato_Data_Length_Bytes);
			ret = save_ok;
			return ret;
		}

		else{
			ret = crc_error;
			return ret;
		}
	}

}

save_ret_t Potato_Erase(erase_page_t pages){
	uint32_t Page_Error = 0;
	uint32_t primask_bit;
	save_ret_t ret = 0;

	FLASH_EraseInitTypeDef Erase_t;
	Erase_t.TypeErase = FLASH_TYPEERASE_PAGES;
	Erase_t.Banks = FLASH_BANK_1;
	Erase_t.Page = Potato_Flash_Page;
	Erase_t.NbPages = pages;

	primask_bit = __get_PRIMASK();  /**< backup PRIMASK bit */
	__disable_irq();

	if(HAL_FLASH_Unlock() != HAL_OK) {
			ret = unlock_error;
			return ret;
		}

	if(HAL_FLASHEx_Erase(&Erase_t, &Page_Error) != HAL_OK){
			ret = erase_error;
			return ret;
		}


	if(HAL_FLASH_Lock() != HAL_OK){
			ret = lock_error;
			return ret;
		}

	__set_PRIMASK(primask_bit);
	return ret;
}

save_ret_t Potato_Backup_Load(void){
	uint64_t * dest_address = (uint64_t *)Potato_Flash_Address;
	uint64_t *source_address = (uint64_t *)Potato_Flash_Backup_Address;
	//uint64_t data;
	save_ret_t ret = 0;
	uint32_t primask_bit;
	uint32_t Page_Error = 0;

	FLASH_EraseInitTypeDef Erase_t;
	Erase_t.TypeErase = FLASH_TYPEERASE_PAGES;
	Erase_t.Banks = FLASH_BANK_1;
	Erase_t.Page = Potato_Flash_Page;
	Erase_t.NbPages = 1;

	primask_bit = __get_PRIMASK();  /**< backup PRIMASK bit */
	__disable_irq();

	if(HAL_FLASH_Unlock() != HAL_OK) {
			ret = unlock_error;
			return ret;
		}

	if(HAL_FLASHEx_Erase(&Erase_t, &Page_Error) != HAL_OK){
			ret = erase_error;
			return ret;
		}

	for(uint8_t i = 0; i<13; i++){
		//memcpy(&data, source_address + i, 8);
		if(HAL_FLASH_Program(FLASH_TYPEPROGRAM_DOUBLEWORD, (uint32_t)(dest_address + i), *(source_address + i)) != HAL_OK) {
			ret = write_error;
			return ret;
		}
	}

	if(HAL_FLASH_Lock() != HAL_OK){
			ret = lock_error;
			return ret;
		}

	__set_PRIMASK(primask_bit);

	return ret;
}

save_ret_t Potato_Dummy_Backup(void){
	uint64_t * dest_address = (uint64_t *)Potato_Flash_Backup_Address;
	save_ret_t ret = 0;
	uint32_t primask_bit;
	uint32_t Page_Error = 0;
	uint64_t data = 0x1010101010101010;

	FLASH_EraseInitTypeDef Erase_t;
	Erase_t.TypeErase = FLASH_TYPEERASE_PAGES;
	Erase_t.Banks = FLASH_BANK_1;
	Erase_t.Page = Potato_Flash_Backup_Page;
	Erase_t.NbPages = 1;

	primask_bit = __get_PRIMASK();  /**< backup PRIMASK bit */
	__disable_irq();

	if(HAL_FLASH_Unlock() != HAL_OK) {
			ret = unlock_error;
			return ret;
		}

	if(HAL_FLASHEx_Erase(&Erase_t, &Page_Error) != HAL_OK){
			ret = erase_error;
			return ret;
		}

	for(uint8_t i = 0; i<13; i++){
		if(HAL_FLASH_Program(FLASH_TYPEPROGRAM_DOUBLEWORD, (uint32_t)(dest_address + i), data)) {
			ret = write_error;
			return ret;
		}
	}

	if(HAL_FLASH_Lock() != HAL_OK){
			ret = lock_error;
			return ret;
		}

	__set_PRIMASK(primask_bit);

	return ret;
}
