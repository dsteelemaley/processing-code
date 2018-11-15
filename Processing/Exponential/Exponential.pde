float ballX = 100, ballY = 100;
void setup () {
  size(500, 500);
  background(100, 50, 100);
  noStroke();
}

void draw (){
  ellipse(ballX,ballY,50,50);
  ballX+=1;
  ballY+=1*pow(1.04,ballX-200);
}