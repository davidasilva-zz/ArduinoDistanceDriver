#include <DistanceSensor.h>
#include <UltrasoundDistanceSensor.h>

float distance;
UltrasoundDistanceSensor distanceSensor(2, 3);

void setup() {
  Serial.begin(9600);
  Serial.println("Printing distance...");
}

void loop() {
  distance = distanceSensor.getDistance();
  Serial.println(distance);
  delay(500);
}
