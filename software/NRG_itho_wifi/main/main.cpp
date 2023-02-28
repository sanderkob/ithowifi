#include <Arduino.h>
#include "globals.h"

#define TASK_MAIN_PRIO 5

// locals
TaskHandle_t xTaskInitHandle = NULL;
StaticTask_t xTaskInitBuffer;
StackType_t xTaskInitStack[STACK_SIZE];

void setup()
{
  // put your setup code here, to run once:

  setenv("TZ", "CET-1CEST,M3.5.0,M10.5.0/3", 1);
  tzset();
  
#if defined(ENABLE_SERIAL)
  Serial.begin(115200);
  Serial.flush();
  delay(100);
#endif

  xTaskInitHandle = xTaskCreateStaticPinnedToCore(
      TaskInit,
      "TaskInit",
      STACK_SIZE,
      (void *)1,
      TASK_MAIN_PRIO,
      xTaskInitStack,
      &xTaskInitBuffer,
      CONFIG_ARDUINO_RUNNING_CORE);
}

void loop()
{
  // put your main code here, to run repeatedly:
  yield();
  esp_task_wdt_reset();
}
