# ✈️ 3D Visualization of Aircraft Orientation  with ESP8266 + MPU6050

This project visualizes real-time 3D aircraft orientation using an ESP8266 (NodeMCU) and MPU6050 sensor.  

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

  ## Steps
  - Give the connections
  - Upload the 'ESP8266.ino' file into ESP8266 using ArduinoIDE select 'COM' Port before uploading the code
  - Download Processing Software in your PC and Put the '3D_Visualization.pde' file in it and run the code after uploading the code to ESP8266

 ![Screenshot 2025-04-29 202907](https://github.com/user-attachments/assets/48e96c98-9184-4ccb-9b67-a9eeb60c14fa)

![Screenshot 2025-04-29 201403](https://github.com/user-attachments/assets/0a292e93-6c6f-4e4a-9877-886ed7db19b0)
![Screenshot 2025-04-29 202840](https://github.com/user-attachments/assets/68d28b22-a118-428f-86a1-834aefac9ddb)

![Screenshot 2025-04-29 201308](https://github.com/user-attachments/assets/dfd9fb5a-4331-48f6-bc1f-6d2bff5a8a61)


