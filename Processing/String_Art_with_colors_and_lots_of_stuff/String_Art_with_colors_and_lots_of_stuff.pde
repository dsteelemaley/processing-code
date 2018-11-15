void setup() {
  size(400, 400);
  background(255, 255, 255);
  stroke(255, 0, 155);
}

void draw() {
  for (int i=0; i < 401; i+=40) {
    line(i, 0, 0, -i+400);
    print(i);
  }
}
