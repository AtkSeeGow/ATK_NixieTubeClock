//
//
//

#include "NumberManager.h"

NumberManager::NumberManager()
{
  this->p1 = 6;
  this->p2 = 7;
  this->p3 = 8;
  this->p4 = 9;

  pinMode(this->p1, OUTPUT);
  pinMode(this->p2, OUTPUT);
  pinMode(this->p3, OUTPUT);
  pinMode(this->p4, OUTPUT);
}

void NumberManager::Execution(int value)
{
  switch (value) {
    case 0:
      digitalWrite(this->p4, HIGH);
      digitalWrite(this->p2, HIGH);
      digitalWrite(this->p1, HIGH);
      digitalWrite(this->p3, LOW);
      break;
    case 1:
      digitalWrite(this->p1, HIGH);
      digitalWrite(this->p2, HIGH);
      digitalWrite(this->p3, LOW);
      digitalWrite(this->p4, LOW);
      break;
    case 2:
      digitalWrite(this->p1, HIGH);
      digitalWrite(this->p2, LOW);
      digitalWrite(this->p3, LOW);
      digitalWrite(this->p4, LOW);
      break;
    case 3:
      digitalWrite(this->p1, LOW);
      digitalWrite(this->p2, LOW);
      digitalWrite(this->p3, HIGH);
      digitalWrite(this->p4, LOW);
      break;
    case 4:
      digitalWrite(this->p4, HIGH);
      digitalWrite(this->p2, LOW);
      digitalWrite(this->p1, LOW);
      digitalWrite(this->p3, HIGH);
      break;
    case 5:
      digitalWrite(this->p1, LOW);
      digitalWrite(this->p2, HIGH);
      digitalWrite(this->p3, LOW);
      digitalWrite(this->p4, LOW);
      break;
    case 6:
      digitalWrite(this->p1, LOW);
      digitalWrite(this->p2, LOW);
      digitalWrite(this->p3, LOW);
      digitalWrite(this->p4, LOW);
      break;
    case 7:
      digitalWrite(this->p1, LOW);
      digitalWrite(this->p2, LOW);
      digitalWrite(this->p3, LOW);
      digitalWrite(this->p4, HIGH);
      break;
    case 8:
      digitalWrite(this->p1, HIGH);
      digitalWrite(this->p2, LOW);
      digitalWrite(this->p3, LOW);
      digitalWrite(this->p4, HIGH);
      break;
    case 9:
      digitalWrite(this->p4, HIGH);
      digitalWrite(this->p2, HIGH);
      digitalWrite(this->p1, LOW);
      digitalWrite(this->p3, LOW);
      break;
  }
}
