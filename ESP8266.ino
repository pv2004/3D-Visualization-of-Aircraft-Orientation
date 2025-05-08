#include <Wire.h>

const int MPU_addr = 0x68;  // MPU6050 I2C address

int16_t AcX, AcY, AcZ;
int16_t GyX, GyY, GyZ;

void setup() {
  Serial.begin(115200);
  Wire.begin();

  Wire.beginTransmission(MPU_addr);
  Wire.write(0x6B); // PWR_MGMT_1 register
  Wire.write(0);    // Wake up the MPU6050
  Wire.endTransmission(true);

  Serial.println("MPU6050 Ready");
}

void loop() {
  readMPU6050();

  // Calculate pitch and roll (approximate)
  float pitch = atan2(AcY, AcZ) * 180/PI;
  float roll = atan2(-AcX, sqrt(AcY * AcY + AcZ * AcZ)) * 180/PI;

  // Send pitch and roll only
  Serial.print(pitch);
  Serial.print(",");
  Serial.println(roll);

  delay(20); // 50 Hz
}

void readMPU6050() {
  Wire.beginTransmission(MPU_addr);
  Wire.write(0x3B);
  Wire.endTransmission(false);
  Wire.requestFrom(MPU_addr, 14, true);

  AcX = Wire.read() << 8 | Wire.read();
  AcY = Wire.read() << 8 | Wire.read();
  AcZ = Wire.read() << 8 | Wire.read();
  Wire.read(); Wire.read(); // Skip temperature
  GyX = Wire.read() << 8 | Wire.read();
  GyY = Wire.read() << 8 | Wire.read();
  GyZ = Wire.read() << 8 | Wire.read();
}
