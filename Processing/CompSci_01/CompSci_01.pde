float circleX; 
float circleY;
float circleDiameter;
float rectX;
float rectY;
float rect2X;
float rect2Y;
float rect2Width;
float rect2Height;
float rectWidth;
float rectHeight;

void setup() {
  size(700,700);
  noStroke();
  circleX=width/2;
  circleY=height/2;
  circleDiameter=0.3*width*.5+0.3*height*.5;
  rectX=circleX-width/20;
  rectY=circleY-height/20;
  rectWidth=width/10;
  rectHeight=height/2+height/20;
  rect2X=circleX-width/4;
  rect2Y=circleY-(.5*height/20+.5*width/20);
  rect2Width=width/2;
  rect2Height=.5*height/10+.5*width/10;
}
void draw() {
  background(0, 0, 255); // draw a blue background
  fill(255, 0, 0); // set the fill color to red
  ellipse(circleX,circleY,circleDiameter,circleDiameter);
  rect(rectX, rectY, rectWidth, rectHeight);
  rect(rect2X,rect2Y,rect2Width,rect2Height);
}
