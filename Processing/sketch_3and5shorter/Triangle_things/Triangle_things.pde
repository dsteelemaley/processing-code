void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  if (mouseY < 350) {
    triangle(100, 400, 400, 400, mouseX, mouseY);
  } else {
    triangle(100, 400, 400, 400, 250, 150);
  }
}