#include "LPMwRTC.h"



//wakeup counter 2000 : 1sec
void Potato_enter_sleep(void){
    __HAL_RCC_PWR_CLK_ENABLE();
	HAL_RTCEx_SetWakeUpTimer_IT(&hrtc, 20000, RTC_WAKEUPCLOCK_RTCCLK_DIV16);
    HAL_SuspendTick();
    HAL_PWR_EnterSLEEPMode(0, PWR_SLEEPENTRY_WFI);
}

void Potato_enter_stop(void){
    __HAL_RCC_PWR_CLK_ENABLE();
	HAL_RTCEx_SetWakeUpTimer_IT(&hrtc, 20000, RTC_WAKEUPCLOCK_RTCCLK_DIV16);
    HAL_SuspendTick();
    HAL_PWR_EnterSTOPMode(PWR_LOWPOWERREGULATOR_ON, PWR_SLEEPENTRY_WFI);
}

void Potato_enter_standby(void){
    __HAL_RCC_PWR_CLK_ENABLE();
	HAL_RTCEx_SetWakeUpTimer_IT(&hrtc, 20000, RTC_WAKEUPCLOCK_RTCCLK_DIV16);
    HAL_SuspendTick();
    HAL_PWR_EnterSTANDBYMode();
}

void HAL_RTCEx_WakeUpTimerEventCallback(RTC_HandleTypeDef *hrtc){

	SystemClock_Config();
	HAL_ResumeTick();
	HAL_RTCEx_DeactivateWakeUpTimer(hrtc);
	printf("exit stop\n");

}
