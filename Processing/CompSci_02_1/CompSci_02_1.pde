float rectX; 
float rectY = 100; // note that this is different!
float rectWidth;
float rectHeight;
float xSpeed=1;

void setup() {
  size(500, 500);
  background(255);
  fill(0, 0, 255);
  noStroke();
  rectWidth = width/18; 
  background(255);
}

void draw() { 
  for (int i=0; i<500; i+=width/20) {
    fill(0,0,255);
    rectX=i;
    rectY=i;
    rect(rectX, rectY, rectWidth, 500);
  } 
  for (int i=0; i<500; i+=width/20) {
    fill(255,0,0);
    rectX=i;
    rectY=i;
    rect(rectX-54, rectY, rectWidth, 500);
  } 
  for (int i=0; i<500; i+=width/20) {
    fill(0,255,0);
    rectX=i;
    rectY=i;
    rect(rectX-104, rectY, rectWidth, 500);
  } 
  
}
