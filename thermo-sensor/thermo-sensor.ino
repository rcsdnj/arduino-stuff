#define measuredreferenceVoltage 5//3.398
#define TEMPERATURE_READINGS_COUNT 100
float temperatureReadings[TEMPERATURE_READINGS_COUNT];
int currentReadIndex = 0;
bool readMinimum = false;

// the setup routine runs once when you press reset:
void setup() {
  // initialize serial communication at 9600 bits per second
  Serial.begin(9600);
  //analogReference(EXTERNAL);
  for (int i = 0; i < TEMPERATURE_READINGS_COUNT; i++) {
    temperatureReadings[i] = 0.0f;
  }
}

// the loop routine runs over and over again forever:
void loop() {
  // read the input on analog pin 0:
  int sensorValue = analogRead(A0);
  // Convert the analog reading (which goes from 0 - 1023) to a voltage (0 - 5V):
  float voltage = sensorValue * (measuredreferenceVoltage / 1023.0);
  float voltageInMilliVolts = voltage * 1000;
  float readTemperature = (voltageInMilliVolts)/10.0;
  temperatureReadings[currentReadIndex] = readTemperature;
  currentReadIndex++;
  if (currentReadIndex == TEMPERATURE_READINGS_COUNT)
  {
    currentReadIndex = 0;
    if (!readMinimum) readMinimum = true;
  }

  if (readMinimum) {
    float avgTemperatureReading = 0.0f;
    for (int i = 0; i < TEMPERATURE_READINGS_COUNT; i++) {
      avgTemperatureReading += temperatureReadings[i];
    }
    avgTemperatureReading = avgTemperatureReading/TEMPERATURE_READINGS_COUNT;
    // print out the value you read:
    float temperatureToShow = avgTemperatureReading;

    if ((currentReadIndex % 10) == 0) {
      Serial.println(temperatureToShow, 1);
    }
  }
  delay(50);
}
