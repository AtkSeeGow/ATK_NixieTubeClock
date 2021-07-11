// PowerManager.h

#ifndef _POWERMANAGER_h
#define _POWERMANAGER_h

#if defined(ARDUINO) && ARDUINO >= 100
#include "arduino.h"
#else
#include "WProgram.h"
#endif

class PowerManager {
  public:
    PowerManager();
    void Execution(int value);
  private:
    int p1;
    int p2;
    int p3;
    int p4;
};

#endif
