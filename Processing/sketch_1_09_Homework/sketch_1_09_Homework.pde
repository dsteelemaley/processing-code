float ballX = 300;
float ballY = 250;
float firststepX = 0;
float fastfirststepX =0;
float squareWidth =40;
float squareX =700;
float squareY =70;
float circleOneX = 75, circleOneY = 75;
float circleTwoX = 625, circleTwoY = 425;

void setup() {
  size(750, 500); 
  noStroke();
  frameRate(60);
}

void draw() {
  background(5, 100, 100);
  fill(255);
  ellipse(firststepX, 220, 40, 40);
  fill(255, 0, 0);
  //ellipse(ballX, ballY, 25, 25);
  ellipse(fastfirststepX, 300, 40, 40);
  fill(0, 0, 255);
  rect(0, 450, squareWidth, 10);
  fill(255, 118, 187);
  rect(squareX, squareY, 20, 50);
  fill(0);
  ellipse(circleOneX, circleOneY, 50, 50);
  fill(255);
  ellipse(circleTwoX, circleTwoY, 50, 50);
  circleOneX += 3;
  circleOneY += 1.75;
  circleTwoX -= 2.5;
  circleTwoY -= 1.75;
  squareWidth +=2;
  ballX +=.5;
  ballY +=1;
  firststepX +=1;
  fastfirststepX +=2;
  squareX -=1;
  squareY +=3;
}