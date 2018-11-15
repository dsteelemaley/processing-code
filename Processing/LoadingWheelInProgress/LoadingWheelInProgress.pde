float x;

void setup() {
  size(500, 500);
}

void draw() {
  background(200);
  translate(mouseX, mouseY);
  ellipse(20*sin(x), 20*cos(x), 10, 10);
  x += 1/60;
}
