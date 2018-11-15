int gridSize;
float circleX;
float circleY;
int diameter;
boolean ballColorRed = true;

void setup () {
  size(550, 550);
  gridSize=width/11;
  diameter = 25;
}

void draw() {
  for (int x = 25; x < width+gridSize; x += gridSize) {
    for (int y = 25; y < height; y+=gridSize) {
      if (ballColorRed == true) {
        ballColorRed = false;
        fill(0, 0, 255);
        circleX = x;
        circleY = y;
        ellipse(circleX, circleY, diameter, diameter);
      } else {
        ballColorRed = true;
        fill(255, 0, 0);
        circleX = x;
        circleY = y;
        ellipse(circleX, circleY, diameter, diameter);
      }
    }
  }
}
