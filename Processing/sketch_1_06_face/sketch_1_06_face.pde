float faceX= 250, faceY=250; // define variables for the face coordinates
// give them starting values of 250 and 250.
float leftEyeX, leftEyeY; // Define variables for the left eye coordinates
float rightEyeX, rightEyeY;
float mouthX, mouthY;
float noseX, noseY;

void setup(){
  size(500,500);
  stroke(0);
}

void draw(){
  background(255);
  leftEyeX=faceX-40; // set the left eye X coordinate as 40 pixels less than //the faceX coordinate
  leftEyeY=faceY-30; // set the left eye Y coordinate as 30 pixels less than //the faceY coordinate
  rightEyeX=faceX+40;
  rightEyeY=faceY-30;
  mouthX=faceX-30;
  mouthY=faceY+50;
  fill(0,0,255); // make fill color blue
  ellipse(faceX,faceY,200,200); // draw a head using the values of the 
// variables faceX and faceY as the x and y coordinates
  fill(255); //make fill color white
  rect(mouthX,mouthY,60,20); // make a rectangular mouth
  ellipse(leftEyeX,leftEyeY,40,30); // make a left eye using variables
// for the x and y coordinates
  ellipse(rightEyeX,rightEyeY,40,30);
  fill(0); // make the fill color black
  ellipse(leftEyeX,leftEyeY,25,25); // make a black pupil using variables
// for the x and y coordinates
  ellipse(rightEyeX,rightEyeY,25,25);
  fill(0,255,0); // make fill color green
  ellipse(faceX,faceY,15,30); // make a green nose
}