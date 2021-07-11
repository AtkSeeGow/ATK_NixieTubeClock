import serial
import time

from datetime import datetime

ser = serial.Serial("COM4", 9600);

while True:
    message = datetime.now().strftime('%H%M%S') + '\n'
    ser.write(str.encode(message));
    time.sleep(1)