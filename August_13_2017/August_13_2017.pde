import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

PImage img;

void setup() {
  size(639, 358); 

  
  // Calling arduino port
  arduino = new Arduino(this, "/dev/cu.usbmodem1411", 57600);
  
  // Set the Arduino digital pins as inputs.
  for (int i = 0; i <= 13; i++)
    arduino.pinMode(i, Arduino.INPUT);  
    
  img = loadImage("qns.jpg");
  background(img);  
  textSize(28);
  fill(0);
  text("How you ever visited Queens, NY?", 80, 100);
}


void draw() {
  
  for (int i = 0; i <= 4; i++) {
    if (arduino.digitalRead(i) == Arduino.HIGH)
    rect(random(width), random(height), 15, 15);

  }
  

  
    for (int i = 0; i <= 8; i++) {
    if (arduino.digitalRead(i) == Arduino.HIGH)
    
    ellipse(random(width), random(height), 15, 15);

  }

}