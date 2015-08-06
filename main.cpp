#include <Settings.h>
#include <string.h>
#include <Arduino.h>
#include <MAX7219Driver.h>
#include <LedMatrixDriver.h>
#include <LedMatrixMAX7219Driver.h>

MAX7219Driver driver(10, 11, 12);
LedMatrixMAX7219Driver matrix(&driver, 8, 8);
char x, y;

void setup() {
    pinMode(13, OUTPUT);
}

void loop() {
    x = rand();
    y = rand();
    matrix.setLed(x % 0x08, y % 0x08, LedMatrixDriver::ON);
    char state = digitalRead(13);
    digitalWrite(13, !state);
    delay(100);
    matrix.setLed(x % 0x08, y % 0x08, LedMatrixDriver::OFF);
    delay(100);
}

int main(void) {
    init();

#if defined(USBCON)
    USBDevice.attach();
#endif

    setup();

    for (;;) {
        loop();
        if (serialEventRun) {
            serialEventRun();
        }
    }

    return 0;
}

