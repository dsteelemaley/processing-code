int lineWidth = 2;

void setup() {
  size(500, 500);
}

void draw() {
  for (int i = 1; i < width+1; i+=lineWidth) {
    strokeWeight(lineWidth);
    line(i, sq(i), i, height);
  }
}
