float ballX=300;
float ballY=300;
boolean moveRight=true;
boolean moveLeft=false;
boolean moveUp=true;
boolean moveDown=false;
float redFill;
float blueFill;

void setup() {
  size(1200, 800);
}

void draw() {
  background(0);
  fill(redFill, 0, blueFill);
  drawFace(ballX,ballY,200,color(redFill, (redFill+blueFill)/2, blueFill), color(blueFill, redFill, (blueFill+redFill)/2));

  if (ballX+100>1200) {
    moveRight=false;
    moveLeft=true;
  }

  if (ballX-100<0) {
    moveRight=true;
    moveLeft=false;
  }

  if (ballY-100<0) {
    moveUp=false;
    moveDown=true;
  }

  if (ballY+100>800) {
    moveUp = true;
    moveDown= false;
  }

  if (moveLeft) {
    ballX-=2;
  }

  if (moveRight) {
    ballX+=2;
  }

  if (moveUp) {
    ballY -=4;
  }

  if (moveDown) {
    ballY +=4;
  }

  redFill = (ballX+50)/6;
  blueFill = (ballY+50)/6;
  
}