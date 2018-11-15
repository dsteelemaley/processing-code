float ballX;
float ballY;
float ballXSpeed;
float ballYSpeed;

void setup(){
  size(500,600);
  ballX = 100;
  ballY = 100;
  ballXSpeed = 2;
  ballYSpeed = 2;
}

void draw(){
  ellipse(ballX,ballY,50,50);
  
}
