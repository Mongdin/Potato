#include "adc.h"

extern ADC_HandleTypeDef hadc1;


long Potato_Readadc(void){
	volatile long adc_value = 0;
	double V_per_adcvalue = 0.805;
	long real_A = 0;
	//uint8_t *buffer[30] = {0,};

	adc_value = 0;

/*
	HAL_ADC_Start(&hadc1);
	HAL_ADC_PollForConversion(&hadc1, 100);
	adc_value += HAL_ADC_GetValue(&hadc1);

	//return adc_value;
*/

	for(uint8_t i = 0; i<10; i++){
		HAL_ADC_Start(&hadc1);
		HAL_ADC_PollForConversion(&hadc1, 100);
		adc_value += HAL_ADC_GetValue(&hadc1);
		HAL_Delay(10);
	}

	adc_value = (adc_value/10U);

	//return adc_value;


	/*
	sprintf(buffer,"adc_val_raw = %d\n",adc_value);
	HAL_UART_Transmit(&huart1, buffer, strlen(buffer), 20);
	*/
	//adc_value -= 3065;
	adc_value -= 3005;
	real_A = (long)(((double)adc_value * V_per_adcvalue)*10);
	/*
	sprintf(buffer,"adc_val = %d\n",adc_value);
	HAL_UART_Transmit(&huart1, buffer, strlen(buffer), 20);
	*/
	/*
	sprintf(buffer,"real_A = %d mA\n\n",real_A);
	HAL_UART_Transmit(&hDiscoUart, buffer, strlen(buffer), 20);
	*/
	return real_A;

	//HAL_Delay(1000);

}











