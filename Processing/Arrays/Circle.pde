void drawCircle(float fX, float fY, float fD, float moveUp,float moveDown, float moveLeft,float moveRight) {
  float faceX=fX, faceY=fY; // define variables for the face coordinates
  float faceDiameter=fD;
  fill(0); // make fill color blue
  ellipse(faceX, faceY, faceDiameter, faceDiameter);  
}