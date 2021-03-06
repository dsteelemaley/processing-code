//Defining a loop that takes these inputs
void drawFace(float fX, float fY, float fD, color faceColor, color eyeColor,boolean face) {
  //Creating some variables
  float faceX=fX, faceY=fY; // define variables for the face coordinates
  float leftEyeX, leftEyeY; // define variables for the left eye coordinates
  float rightEyeX, rightEyeY;
  float eyeWidth, eyeHeight, eyeXShift, eyeYShift;
  float pupilDiameter;
  float mouthX, mouthY;
  float noseX, noseY;
  float noseWidth, noseHeight;
  float mouthXShift, mouthYShift;
  float mouthWidth, mouthHeight;
  float faceDiameter=fD;
  //Defining variables
  mouthXShift= 0;
  mouthYShift= faceDiameter*45/200;
  eyeXShift = faceDiameter*40/200;
  eyeYShift = faceDiameter*30/200;
  eyeWidth = faceDiameter*33/200; // these are examples of scaling factors!
  eyeHeight = faceDiameter*20/200; 
  noseWidth=faceDiameter*15/200;
  noseHeight=faceDiameter*30/200;
  mouthWidth= faceDiameter*100/200;
  mouthHeight= faceDiameter*60/200;
  pupilDiameter = faceDiameter*20/200;
  noseX=faceX;
  noseY=faceY;
  mouthX=faceX-mouthXShift;
  mouthY=faceY+mouthYShift;
  leftEyeX=faceX-eyeXShift; 
  leftEyeY=faceY-eyeYShift; 
  rightEyeX=faceX+eyeXShift; 
  rightEyeY=faceY-eyeYShift;
  fill(faceColor); // make fill color blue
  //This is creating an ellipse that is displayed on the screen
  ellipse(faceX, faceY, faceDiameter, faceDiameter);  
  //This if statement allows you to control if there is a face or not
  // by doing drawFace(x,x,x,x,x,true); or false
  if (face) {
    fill(255); //make fill color white
    //All of these ellipses and the arc are the eyes, nose and mouth of the faces
    ellipse(leftEyeX, leftEyeY, eyeWidth, eyeHeight); // make a left eye      
    ellipse(rightEyeX, rightEyeY, eyeWidth, eyeHeight); 
    fill(eyeColor); // make the fill color black
    ellipse(leftEyeX, leftEyeY, pupilDiameter, pupilDiameter); // make pupil 
    ellipse(rightEyeX, rightEyeY, pupilDiameter, pupilDiameter);
    fill(0);
    ellipse(leftEyeX, leftEyeY, pupilDiameter*70/200, pupilDiameter*80/200);
    ellipse(rightEyeX, rightEyeY, pupilDiameter*70/200, pupilDiameter*80/200);
    fill(0, 255, 0); // make fill color green
    ellipse(noseX, noseY, noseWidth, noseHeight); // make a green nose
    fill(255);
    arc(mouthX, mouthY, mouthWidth, mouthHeight, 0, PI);
  }
}