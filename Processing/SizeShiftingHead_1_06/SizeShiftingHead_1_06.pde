float faceX=400, faceY=400; // define variables for the face coordinates
float leftEyeX, leftEyeY; // define variables for the left eye coordinates
float rightEyeX, rightEyeY;
float eyeWidth, eyeHeight, eyeXShift, eyeYShift;
float pupilDiameter;
float mouthX, mouthY;
float noseX, noseY;
float noseWidth, noseHeight;
float mouthXShift, mouthYShift;
float mouthWidth, mouthHeight;
float faceDiameter=500;

void setup() {
  size(800, 800);
  stroke(0);
}

void draw() {
  background(50);
  eyeWidth = faceDiameter*40/200; // these are examples of scaling factors!
  eyeHeight = faceDiameter*30/200; 
  eyeXShift = faceDiameter*40/200;
  eyeYShift = faceDiameter*30/200;
  pupilDiameter = faceDiameter*25/200;
  leftEyeX=faceX-eyeXShift; 
  leftEyeY=faceY-eyeYShift; 
  rightEyeX=faceX+eyeXShift; 
  rightEyeY=faceY-eyeYShift;
  noseX=faceX;
  noseY=faceY;
  noseWidth=faceDiameter*15/200;
  noseHeight=faceDiameter*30/200;
  mouthX=faceX-mouthXShift;
  mouthY=faceY+mouthYShift;
  mouthXShift= faceDiameter*30/200;
  mouthYShift= faceDiameter*50/200;
  mouthWidth= faceDiameter*60/200;
  mouthHeight= faceDiameter*20/200;
  fill(0, 0, 255); // make fill color blue
  ellipse(faceX, faceY, faceDiameter, faceDiameter);  
  fill(255); //make fill color white
  rect(mouthX, mouthY, mouthWidth, mouthHeight); // make a rectangular mouth
  ellipse(leftEyeX, leftEyeY, eyeWidth, eyeHeight); // make a left eye      
  ellipse(rightEyeX, rightEyeY, eyeWidth, eyeHeight); 
  fill(0); // make the fill color black
  ellipse(leftEyeX, leftEyeY, pupilDiameter, pupilDiameter); // make pupil 
  ellipse(rightEyeX, rightEyeY, pupilDiameter, pupilDiameter);
  fill(0, 255, 0); // make fill color green
  ellipse(noseX, noseY, noseWidth, noseHeight); // make a green nose
  if (faceDiameter<width){
  faceDiameter += 10;
  }else{
    faceDiameter-=10;
  }
}
