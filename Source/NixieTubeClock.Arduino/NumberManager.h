// NumberManager.h

#ifndef _NUMBERMANAGER_h
#define _NUMBERMANAGER_h

#if defined(ARDUINO) && ARDUINO >= 100
#include "arduino.h"
#else
#include "WProgram.h"
#endif

class NumberManager {
  public:
    NumberManager();
    void Execution(int value);
  private:
    int p1;
    int p2;
    int p3;
    int p4;
};

#endif
