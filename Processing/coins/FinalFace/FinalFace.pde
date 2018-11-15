

void setup() {
  size(800, 800);
  background(255);
  noStroke();
}

void draw() {
  background(255);
  drawFace(100,100,200,color(255,40,100),color(0,0,255)) ;
  drawFace(700,100,200,color(252,84,157),color(65,206,205));
  drawFace(100,700,200,color(201,161,0), color(10,255,0));  
  drawFace(700,700,200,color(79,0,95), color(10,255,0));
  drawFace(mouseX,mouseY,400,color(10,10,170), color(77,43,10)); 
}