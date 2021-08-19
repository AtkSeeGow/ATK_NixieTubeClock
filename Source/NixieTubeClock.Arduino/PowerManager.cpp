//
//
//

#include "PowerManager.h"

PowerManager::PowerManager()
{
  this->p1 = 10;
  this->p2 = 16;
  this->p3 = 14;
  this->p4 = 15;

  pinMode(this->p1, OUTPUT);
  pinMode(this->p2, OUTPUT);
  pinMode(this->p3, OUTPUT);
  pinMode(this->p4, OUTPUT);
}

void PowerManager::Execution(int value)
{
  switch (value) {
    case 0:
      digitalWrite(this->p4, LOW);
      digitalWrite(this->p1, HIGH);
      digitalWrite(this->p2, LOW);
      digitalWrite(this->p3, LOW);
      break;
    case 1:
      digitalWrite(this->p4, HIGH);
      digitalWrite(this->p1, LOW);
      digitalWrite(this->p2, LOW);
      digitalWrite(this->p3, LOW);
      break;
    case 2:
      digitalWrite(this->p4, HIGH);
      digitalWrite(this->p2, LOW);
      digitalWrite(this->p1, HIGH);
      digitalWrite(this->p3, LOW);
      break;
    case 3:
      digitalWrite(this->p4, LOW);
      digitalWrite(this->p2, HIGH);
      digitalWrite(this->p1, HIGH);
      digitalWrite(this->p3, LOW);
      break;
    case 4:
      digitalWrite(this->p4, HIGH);
      digitalWrite(this->p2, HIGH);
      digitalWrite(this->p1, LOW);
      digitalWrite(this->p3, LOW);
      break;
    case 5:
      digitalWrite(this->p4, HIGH);
      digitalWrite(this->p2, LOW);
      digitalWrite(this->p1, LOW);
      digitalWrite(this->p3, HIGH);
      break;
  }
}
