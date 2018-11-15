float rectX = 100; // note that I can declare AND initialize in one line!
float rectY = 350;
float rectWidth;
float rectHeight;
float xSpeed;
void setup() {
  size(500, 500);
  background(255);
  fill(0,0,255);
  noStroke();
  rectWidth = width/10; // why did I wait to initialize these two variables?
  rectHeight = height/20; 
  xSpeed = -0.2;
}
void draw(){
  rect(rectX,rectY,rectWidth,rectHeight);
  rectX+=xSpeed; // this line increases the value of the variable rectX by 1 each time through the draw loop.
}
