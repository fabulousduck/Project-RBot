import cc.arduino.*;
import org.firmata.*;

import controlP5.*;

import processing.serial.*;
import gab.opencv.*;
import processing.video.*;
import java.awt.*;
 
 ControlP5 controlP5;
Arduino arduino;
 
Capture video;
OpenCV opencv;
Serial arduinoPort;

int curr_pos;
int offset_from_center;
int current_rotation_degree = 90;
  String[] cameras = Capture.list();
  

void setup() {
  //arduino.pinMode(9, arduino.OUTPUT);
  size(640, 480);
  video = new Capture(this, 640/2, 480/2, cameras[1]);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  arduino = new Arduino(this, Arduino.list()[1], 57600);
  video.start();
  arduino.pinMode(3, Arduino.OUTPUT);
  arduino.pinMode(2, Arduino.OUTPUT);
  arduino.pinMode(9,Arduino.OUTPUT);
    
}
void draw() {
  background(255);
  scale(2);
  opencv.loadImage(video);
   
  image(video, 0, 0 );
 
  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();  
  Rectangle priority;
  boolean needsProiritCheck;
  //println(faces.length);
  arduino.digitalWrite(8,arduino.HIGH);
 // arduino.analogWrite(3, 255);
   if(faces.length > 1){
     priority = faces[0];
     needsProiritCheck = true;
   }
   if(faces.length == 0){
      arduino.analogWrite(3,0);    
   }
  for (int i = 0; i < faces.length; i++) {
 
      rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);

    
    //if the face is not in the center
    if(faces[i].x <= 140 || faces[i].x >= 120){
     // print(faces[i].x);
     arduino.analogWrite(3, 255);
    //    arduino.analogWrite(3,255);
    }else{
      arduino.analogWrite(3,0);
    }
      
      //if the face is on the left (x is smaller than 120)
      if(faces[i].x < 120){
                //arduino.analogWrite(3,0);
           arduino.analogWrite(9, current_rotation_degree);
           current_rotation_degree += 5;
        //   println(current_rotation_degree);
      
        
        
      }
      
      
      //if the face is on the right (x is bigger than 140)
      if(faces[i].x > 140 + faces[i].width){
        //arduino.analogWrite(3,0);
        arduino.analogWrite(9, current_rotation_degree);
        arduino.analogWrite(5, 90);
        current_rotation_degree -= 5;
        //println(current_rotation_degree);
      //int current_offsetR = faces[i].x - 130;
      //int current_offsetR_degrees = inDegrees(current_offsetR);
      //int old_rotR = current_rotation_degree;
      //rotate_stepper(current_rotation_degree + current_offsetR_degrees);
      //current_rotation_degree = old_rotR - current_offsetR_degrees;
        
      }
      
      
    }}
  
  
  
  
int inDegrees(int pixels){
   return Math.round(pixels / 1.4);
}
 
void rotate_stepper(int cycles){

   arduino.analogWrite(9, cycles);  
}

void movCamRight(int step_size){
  current_rotation_degree += 1;

}
 
void captureEvent(Capture c) {
  c.read();
}

void shoot(){
    
  }