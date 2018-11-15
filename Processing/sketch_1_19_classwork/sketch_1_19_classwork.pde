float startX=50;
float startY=50;
float endX=200;
float endY=250;
float ballX=startX, ballY=startY;

void setup() {
  size(500, 500);
  fill(255, 0, 0);
}

void draw() {
  background(255);
  stroke(0, 0, 255);
  strokeWeight(10);
  line(startX, startY, endX, endY);
  noStroke();
  ellipse(ballX, ballY, 40, 40);
  if (ballX==endX) {
    ballX+=0;
    ballY+=0;
  } else {
    ballX += 1;
    ballY += (endY-startY)/(endX-startX);
  }
}
