float time;
float x;
float direction;
color[] wheels = new color[8];
String c = "g";

void setup() {
  size(600, 600);
  time = 0;
  x = 0;
  frameRate(60);
}

void draw() {
  noStroke();
  noCursor();
  background(255);
  translate(mouseX, mouseY);
  if (time <= 1) {
    time += .02;
  } else {
    time = 0;
    time += 1/60;
  }
  x = map(time, 0, 1, 0, TWO_PI);
  for (int i = wheels.length-1; i >= 0; i --) {
    if (c == "g") {
      wheels[i] = color(0, 255-(i*(255/8)), 0);
    }
    if (c == "r") {
      wheels[i] = color(255-(i*(255/8)), 0, 0);
    }
    if (c == "b") {
      wheels[i] = color(0, 0, 255-(i*(255/8)));
    }
  }
  for (float i = 0; i < TWO_PI; i += PI/4) {
    fill(wheels[int(i)]);
    ellipse(8*sin(x+i), 8*cos(x+i), 100, 50);
  }
  println(time);
  direction += PI/160;
}
