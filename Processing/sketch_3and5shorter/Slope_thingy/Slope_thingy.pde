float negativeMouseY;
float trueMouseY;
float trueMouseX;

void setup() {
  size(500, 500);
  translate(0, 500);
}

void draw() {
  trueMouseX = mouseX/100;
  if (mouseY < 450) {
    trueMouseY = 0;
  }
  
  if (mouseY < 400) {
    trueMouseY = 1;
  }
  
  if (mouseY < 300) {
    trueMouseY = 2;
  }
  
  if (mouseY < 200) {
    trueMouseY = 3;
  }
  
  if (mouseY < 100) {
    trueMouseY = 4;
  }
  background(255, 0, 0);
  line(0, 500, mouseX, mouseY);
  line(100, 500, 100, 0);
  line(200, 500, 200, 0);
  line(300, 500, 300, 0);
  line(400, 500, 400, 0);
  line(0, 100, 500, 100);
  line(0, 200, 500, 200);
  line(0, 300, 500, 300);
  line(0, 400, 500, 400);
  text(trueMouseY/trueMouseX, 50, 50);
}