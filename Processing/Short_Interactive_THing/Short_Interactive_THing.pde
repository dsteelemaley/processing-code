void setup() {
  size(700, 700);
}

void draw() {
  background(90,163,4);
  stroke(0,0,0);
  fill(0,0,0);
  ellipse(mouseX, 350, 300, 300);

  fill(255, 255, 255);
  ellipse(mouseX, mouseY, 70, 70);
  ellipse(mouseX+100,350+100, 70, 70);
  ellipse(mouseX+100,350-100, 70, 70);
  ellipse(mouseX-100,350+100, 70, 70);
  ellipse(mouseX-100,350-100, 70, 70);
}