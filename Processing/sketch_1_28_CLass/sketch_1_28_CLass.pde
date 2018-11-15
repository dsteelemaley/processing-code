float lineSX = 50, lineSY = 450;
float lineFX = 400, lineFY = 100;
float ballX = lineSX;
float ballY = lineSY;
boolean moving = true;

void setup() {
  size(600, 600);
  fill(255);
  stroke(255);
  strokeWeight(3);
}

void draw() {

  background (0, 0, 255);
  line(lineSX, lineSY, lineFX, lineFY);
  ellipse(ballX, ballY, 10, 10);
  if (moving) {
    ballX += 1;
    ballY += (lineFY-lineSY)/(lineFX-lineSX); // my slope calculation
  }
  if (ballX == lineFX & ballY == lineFY) {
    moving = false;
  }
}