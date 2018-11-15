void setup() {
  size(500, 500);
  noStroke();
  frameRate(5);
}

float centerLocationX = 250;
float centerLocationY = 250;
float rectSize = 100;
float rectX = 250;

void draw() {
   = rectX - (centerLocationX*50/250);
  float rectY = centerLocationY*50/250;
  rectX = rectX + (rectSize * 100/100);
  rectY = rectY + (rectSize *100/100);
  background(0);
  fill(255);
  rect (rectX,rectY,rectSize,rectSize);
}