float ellipseX = 300;
float ellipseY = 300;

void setup() {
  size(600, 600);
}

void draw(){
  background(255);
  fill(#081B95);
  ellipse(ellipseX,ellipseY,100,100);
  ellipseX += 1.5;
  ellipseY += 1;
}