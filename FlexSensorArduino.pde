import processing.serial.*;

import cc.arduino.*;
import org.firmata.*;

Serial myPort;
String flex;


void setup() {

 fullScreen();
 background(10);
 noStroke();
 colorMode(RGB, 100);


 // I know that the first port in the serial list on my mac
 // is Serial.list()[0].
 // On Windows machines, this generally opens COM1.
 // Open whatever port is the one you're using.
 String portName = Serial.list()[1]; //change the 0 to a 1 or 2 etc. to match your port
 


}

void draw() {

 fill(0, 10);
 rect(0, 0, width, height);

 if (myPort.available() > 0) { // If data is available,
  flex = myPort.readStringUntil('\n'); // read it and store it in val

 //println(); //print it out in the console
 }


 //float p = 0;
 // for ( int i = 0; i < in.bufferSize(); i++ ) {
 // p now equals the volume of the input
 // p += abs( in.mix.get( i ) );


 // for (val) {
 if (flex == null) {
  println("this is a null");
 } else {
  // Defines the colour and opacity of the circle
  float r = 255.0;
  float g = 255.0;
  float b = 255.0;
  println("f: " + flex);
  float o = map((Float.parseFloat(flex)), 150.0, 300.0, 0.0, 100.0);
  println("o: " + o);
  fill(r, g, b, o);

  //Defines the width, height and size of the rectangle
  float w = random(width);
  float h = random(height);
  float x = random(20, 255);
  ellipse(w, h, 10000, 100000);
 }
}
