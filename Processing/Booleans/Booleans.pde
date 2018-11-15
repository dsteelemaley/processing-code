float ballX=300;
float ballY=300;
boolean moveRight=true;
boolean moveLeft=false;
boolean moveUp=true;
boolean moveDown=false;
float redFill;
float blueFill;

void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  fill(redFill, 0, blueFill);
  rect(ballX-50,ballY-50,100,100);

  if (ballX+50>800) {
    moveRight=false;
    moveLeft=true;
  }

  if (ballX-50<0) {
    moveRight=true;
    moveLeft=false;
  }

  if (ballY-50<0) {
    moveUp=false;
    moveDown=true;
  }

  if (ballY+50>600) {
    moveUp = true;
    moveDown= false;
  }

  if (moveLeft) {
    ballX-=5;
  }

  if (moveRight) {
    ballX+=5;
  }

  if (moveUp) {
    ballY -=5;
  }

  if (moveDown) {
    ballY +=5;
  }

  redFill = (ballX+50)/2.94;
  blueFill = (ballY+50)/2.16;
  
}