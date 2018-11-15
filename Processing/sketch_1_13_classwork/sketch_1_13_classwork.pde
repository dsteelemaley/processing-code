float faceX = 100;
float faceY = 400;
float leftEyeX, leftEyeY;
float rightEyeX, rightEyeY;

void setup() {
  size(500, 500);
  frameRate(60);
  strokeWeight(2);
}

void draw() {
  leftEyeX = faceX-12.5;
  rightEyeX = faceX+12.5;
  leftEyeY = faceY - 15;
  rightEyeY = faceY -15;

  background(255);
  ellipse(faceX, faceY, 50, 75);
  ellipse(leftEyeX, leftEyeY, 15, 12.5);
  ellipse(rightEyeX, rightEyeY, 15, 12.5);
  if (faceX == 300) {
    faceX +=0;
    faceY +=0;
  } else {

    faceX +=2;
    faceY -=3;
  }
}