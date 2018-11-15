void setup() {
  size(500, 500);
  for (int i = 0; i<width; i+=60) {
    rect(i, (height/2)-(i/3), 20, 1500);
  }
}
