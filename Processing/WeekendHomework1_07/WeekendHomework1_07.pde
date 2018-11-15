float duckyX=600, duckyY=500;
boolean direction = true;

void setup() {
  size(800, 600);
  background(100, 200, 255);
  noStroke();
}

void draw() {
  fill(0, 75, 0);
  rect(0, 400, 800, 500);
  fill(0, 0, 255);
  ellipse(600, 500, 300, 100);
  fill(140, 70, 20);
  rect(100, 300, 50, 200);
  fill(0, 200, 0);
  ellipse(125, 200, 200, 250);
  fill(255);
  ellipse(600, 150, 100, 50);
  ellipse(580, 180, 80, 50);
  ellipse(600, 150, 50, 70);
  ellipse(620, 150, 50, 70);
  ellipse(620, 170, 70, 50);
  ellipse(580, 150, 90, 50);
  ellipse(575, 140, 50, 80);
  ellipse(580, 163, 115, 50);
  drawDuck(duckyX, 500);
  if (duckyX > 700) {
    direction = false;
  }
  if (direction == true) {
    duckyX+=-4;
  }
  if (direction == false) {
    duckyX+=3;
  }
}