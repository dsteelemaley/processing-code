float ballX, ballY, xSpeed, ySpeed;
float rectX, rectY, rectWidth, rectHeight;
float ballDiameter = 50;
int bounce;

boolean moveUp = true, moveRight = false;


void setup() {
  size(500, 600);
  ballX=random(1+ballDiameter, width);
  ballY=random(1+ballDiameter, height-300);
  xSpeed=2;
  ySpeed=2;
  rectX = (width/2)-(rectWidth/2);
  rectY = height-100;
  rectWidth = 75;
  rectHeight = 25;
  bounce = 0;
}

void draw() {
  background(255);
  if(dist(0, ballY, 0, height)<ballDiameter/2){
  text("You Have Disappointed Me",width*.5-50,height*.5);
  noLoop();
  }
  fill(255, 0, 0);
  if (dist(0, ballY, 0, height)>ballDiameter/2) {
    background(255);
    ellipse(ballX, ballY, ballDiameter, ballDiameter);
    rect(rectX, rectY, rectWidth, rectHeight);
    if (moveRight) {
      ballX+=xSpeed;
    } else {
      ballX-=xSpeed;
    }
    if (moveUp) {
      ballY-=xSpeed;
    } else {
      ballY+=ySpeed;
    }
    if (dist(0, ballX, 0, 0)<ballDiameter/2 || dist(0, ballX, 0, width)<ballDiameter/2) {
      if (moveRight) {
        moveRight = false;
      } else {
        moveRight = true;
      }
    }
    if (dist(0, ballY, 0, 0)<ballDiameter/2 || dist(0, ballY, 0, height)<ballDiameter/2) {
      if (moveUp) {
        moveUp = false;
      } else {
        moveUp = true;
      }
    }
    if (dist(0, ballY, 0, rectY)<ballDiameter/2 && ballX>rectX && ballX < rectX + rectWidth) {
      moveUp = true;
      xSpeed *= 1.1;
      ySpeed *= 1.1;
      bounce += 1;
      if (bounce == 5){
        rectWidth *= 0.8;
      }
    }
    rectX = mouseX-rectWidth/2;
  }
}
