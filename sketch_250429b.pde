import processing.serial.*;

Serial myPort;
float pitch = 0, roll = 0;
boolean alert = false;

void setup() {
  size(800, 600, P3D);
  String portName = Serial.list()[0];  // Choose your ESP8266 serial port here
  myPort = new Serial(this, portName, 115200);
  myPort.bufferUntil('\n');
}

void draw() {
  background(0);
  lights();
  
  // Move to center
  translate(width/2, height/2, 0);
  
  // Rotate airplane
  rotateX(radians(pitch));
  rotateZ(radians(roll));

  // Draw airplane (simple)
  drawAirplane();
  
  // Check for alert
  if (abs(pitch) > 30 || abs(roll) > 30) {
    alert = true;
  } else {
    alert = false;
  }
  
  // Display alert
  if (alert) {
    camera(); // Reset camera for 2D overlay
    fill(255, 0, 0);
    textSize(32);
    textAlign(CENTER);
    text("ALERT! Angle Limit Exceeded!", width/2, height-50);
  }
  
  // Display angles in top-left corner
  fill(255);
  textSize(24);
  textAlign(LEFT, TOP);
  text("Pitch: " + nf(pitch, 1, 2) + "°", 10, 10);  // Position in top-left corner
  text("Roll: " + nf(roll, 1, 2) + "°", 10, 40);    // Positioned below Pitch
}

void serialEvent(Serial p) {
  String inData = p.readStringUntil('\n');
  if (inData != null) {
    inData = trim(inData);
    String[] values = split(inData, ',');
    if (values.length == 2) {
      pitch = float(values[0]);
      roll = float(values[1]);
    }
  }
}

void drawAirplane() {
  pushMatrix();
  
  fill(100, 100, 255);
  box(120, 20, 20); // Fuselage
  
  // Wings
  pushMatrix();
  fill(255, 0, 0);
  translate(0, 0, 0);
  box(20, 5, 100); 
  popMatrix();
  
  // Tail
  pushMatrix();
  fill(0, 255, 0);
  translate(-50, 0, 0);
  box(20, 20, 10); 
  popMatrix();
  
  popMatrix();
}
