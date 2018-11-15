int numBalls=60;
float maxSpeed=5;
float[] ballDiam = new float[numBalls];
float[] ballX = new float[numBalls];
float[] ballY  = new float[numBalls];
float[] ballXSpeed= new float[numBalls];
float[] ballYSpeed = new float[numBalls];
color[] ballColor = new color[numBalls];

void setup() {
  size(900, 700); 
  for (int i=0; i<numBalls; i++) { // this loop initializes all the values using the random function
    ballDiam[i]=40;
    ballX[i]=random(ballDiam[i], width-ballDiam[i]); // come in from the edge slightly...
    ballY[i]=random(ballDiam[i], height-ballDiam[i]); // come in from the edge slightly...
    ballXSpeed[i]=random(-maxSpeed, maxSpeed);
    ballYSpeed[i]=random(-maxSpeed, maxSpeed);
    ballColor[i] = color(random(0, 255), random(0, 255), random(0, 255));
  }
}

void draw() {
  background(255);
  for (int i=0; i<numBalls; i++) {
    fill(ballColor[i]);
    ellipse(ballX[i], ballY[i], ballDiam[i], ballDiam[i]);
    ballX[i]+=ballXSpeed[i];
    ballY[i]+=ballYSpeed[i];
    if (ballX[i]<ballDiam[i]/2 || ballX[i]>width-ballDiam[i]/2) { 
      ballXSpeed[i]*=-1;
      ballColor[i] = color(random(0, 255), random(0, 255), random(0, 255));
    }
    if (ballY[i]<ballDiam[i]/2 || ballY[i]>height-ballDiam[i]/2) { 
      ballYSpeed[i]*=-1;
      ballColor[i] = color(random(0, 255), random(0, 255), random(0, 255));
      if (ballYSpeed[i] > 1 && ballY[i]>height/2) {
        ballYSpeed[i] -=1;
      }
      if (ballY[i]>height/2 && ballXSpeed[i] > 1) {
        ballXSpeed[i] -= 1;
      }
      if(ballY[i]<height/2 && ballDiam[i] > 1){
        ballDiam[i] -= 1;
      }
    }
  }
}
