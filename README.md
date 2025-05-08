# ✈️ 3D Aircraft Orientation Visualization with ESP8266 + MPU6050

This project visualizes real-time 3D aircraft orientation using an ESP8266 (NodeMCU) and MPU6050 sensor.  
The data is streamed over WiFi and visualized on a web browser using Three.js.


## 🚀 Features

- Reads real-time orientation (yaw, pitch, roll) from MPU6050
- Sends data wirelessly using ESP8266 (WebSocket)
- Visualizes aircraft movement using a 3D model in a web browser
- Interactive and smooth 3D animation with Three.js


## 🛠️ Hardware Required

- ESP8266 (NodeMCU)
- MPU6050 gyroscope + accelerometer module
- Jumper wires
- Breadboard


## 🔌 Wiring

| MPU6050 Pin | ESP8266 Pin  |
|-------------|--------------|
| VCC        | 3.3V          |
| GND        | GND           |
| SCL        | D1 (GPIO5)    |
| SDA        | D2 (GPIO4)    |


## Libraries required 
 - Wire.h
 - your Microcontroller Chip driver to be installed in your computer in order to detect

## Software Used:
- Processing     https://processing.org/download
- ArduinoIDE

