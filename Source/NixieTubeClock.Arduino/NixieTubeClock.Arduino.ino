#include "NumberManager.h"
#include "PowerManager.h"

NumberManager numberManager = NumberManager();
PowerManager powerManager = PowerManager();

void setup()
{
  Serial.begin(9600);
}

String displayParameters = "000000";
String inputParameters = "";

unsigned long index = 0;
unsigned long previousTime = 0;
unsigned long interval = 2;

void loop()
{
  if (Serial.available() > 0) {
    char c = Serial.read();
    if (c != '\n') {
      inputParameters += c;
    }
    else
    {
      displayParameters = inputParameters;
      inputParameters = "";
    }
  }

  unsigned long now = millis();
  if (now - previousTime > interval)
  {
    numberManager.Execution(displayParameters[index] - '0');
    powerManager.Execution(index);
    index++;
    previousTime = now;
    if (index > 5)
      index = 0;
  }
}
