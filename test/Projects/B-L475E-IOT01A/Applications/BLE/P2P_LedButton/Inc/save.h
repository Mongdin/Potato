/*
 * save.h
 *
 *  Created on: Aug 28, 2021
 *      Author: Mongdin
 */

#ifndef APPLICATION_COMMON_HW_INTERFACE_SAVE_H_
#define APPLICATION_COMMON_HW_INTERFACE_SAVE_H_

#include <stdint.h>


struct save {
	uint8_t mySSID[30];
	uint8_t myPW[30];
	uint8_t myDeviceName[30];
	uint8_t myIP[4];
	uint8_t myPeriod[2];
} save_t;

























#endif /* APPLICATION_COMMON_HW_INTERFACE_SAVE_H_ */
