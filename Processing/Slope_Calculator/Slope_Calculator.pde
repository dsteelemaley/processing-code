float pointX = 100;
float pointY = 100;


void setup() {
  size(500, 500);
  noCursor();
}

void draw() {
  float dX = dist(0, mouseY, mouseX, mouseY);
  float dY = dist(mouseX, 500, mouseX, mouseY);

  background(25, 100, 150);

  line(0, 500, mouseX, mouseY);
  line(1, 50, 500, 50);
  line(1, 100, 500, 100);
  line(1, 200, 500, 200);
  line(1, 300, 500, 300);
  line(1, 400, 500, 400);
  line(1, 150, 500, 150);
  line(1, 250, 500, 250);
  line(1, 350, 500, 350);
  line(1, 450, 500, 450);
  line(100, 1, 100, 500);
  line(200, 1, 200, 500);
  line(300, 1, 300, 500);
  line(400, 1, 400, 500);
  line(50, 1, 50, 500);
  line(150, 1, 150, 500);
  line(250, 1, 250, 500);
  line(350, 1, 350, 500);
  line(450, 1, 450, 500);

  text((dY/50)/(dX/50), 50, 50);
}