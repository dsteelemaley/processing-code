float x1=10, y1=10, x2=20, y2=20;

float m = (y2-y1)/(x2-x1);
float b = y1 - x1 * m;

void setup() {
  noStroke();
  size(500, 500);
  fill(0);
  line(x1-((y2-y1)*10), y1-((y2-y1)*10), x2+((y2-y1)*10), y2+((y2-y1)*10));
  fill(255, 40, 40);
  ellipse(x1*10, y1*10, 5, 5);
  ellipse(x2*10, y2*10, 5, 5);
}