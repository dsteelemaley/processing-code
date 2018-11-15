int numBalls = 65;
float ballDiam = 50;
boolean[] moveDown = new boolean[numBalls], moveRight = new boolean[numBalls];
float[] ballX = new float[numBalls], ballY = new float[numBalls], ballXSpeed = new float[numBalls], ballYSpeed = new float[numBalls];
color[] ballColor = new color[numBalls];

void setup() {
  size(1000, 800);
  for (int i =0; i<numBalls; i++) {
    ballX[i]=random(ballDiam/2, width-ballDiam/2);
    ballY[i]=random(ballDiam/2, height-ballDiam/2);
    moveDown[i]=boolean1();
    moveRight[i]=boolean2();
    ballXSpeed[i] = random(2, 12);
    ballYSpeed[i] = random(2, 12);
    ballColor[i]= color(random(0, 255), random(0, 255), random(0, 255));
    fill(50);
  }
  noStroke();
}

void draw() {
  background(255);
  for (int i =0; i<numBalls; i++) {
    fill(ballColor[i]);
    ellipse(ballX[i], ballY[i], ballDiam, ballDiam);
    if (moveRight[i]) {
      ballX[i]+=ballXSpeed[i];
    } else {
      ballX[i]-=ballXSpeed[i];
    }
    if (moveDown[i]) {
      ballY[i]+=ballYSpeed[i];
    } else {
      ballY[i]-=ballYSpeed[i];
    }
    if (edgeBounce(ballX[i], ballDiam/2, width)) {
      moveRight[i] = !moveRight[i];
    }
    if (edgeBounce(ballY[i], ballDiam/2, height)) {
      moveDown[i] = !moveDown[i];
    }
    noFill();
  }
}

boolean boolean1() {
  return random(1) > 0.7;
}

boolean boolean2() {
  return random(1) > 0.3;
}

boolean edgeBounce(float coordinate, float size, float maxEdge) {
  return(coordinate - size < 0 || coordinate + size > maxEdge);
}

void mousePressed() {
  for (int i = 0; i < numBalls; i++) {
    ballColor[i]= color(random(0, 255), random(0, 255), random(0, 255));
  }
}
