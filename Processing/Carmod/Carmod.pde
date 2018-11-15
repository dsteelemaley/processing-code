Truck littleCar;
Truck BIGCAR;
boolean drive;
boolean right;
boolean left;
boolean right2;
boolean left2;

void setup() {
  size(600, 600);
  frameRate(180);
  littleCar = new Truck(color(255, 0, 0), color(10), width/2, height/2, 1, 0, 100);
  BIGCAR = new Truck(color(138, 148, 245), color(0), width/2, height/4, 2, 0, 50);
  drive = false;
}

void draw() {
  translate(0, height);
  scale(1, -1);
  background(255);
  littleCar.headlights();
  BIGCAR.headlights();
  littleCar.display();
  BIGCAR.display();
  if (drive) {
    littleCar.drive();
    BIGCAR.drive();
  }
  if (right) {
    littleCar.turnRight();
  }
  if (left) {
    littleCar.turnLeft();
  }
  if (right2) {
    BIGCAR.turnRight();
  }
  if (left2) {
    BIGCAR.turnLeft();
  }
}

void mousePressed() {
  drive = !drive;
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      right = true;
    }
    if (keyCode == LEFT) {
      left = true;
    }
  }
  if (key== 'a') {
    left2 = true;
  }
  if (key=='d') {
    right2 = true;
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      right = false;
    }
    if (keyCode == LEFT) {
      left = false;
    }
  }
  if (key == 'a') {
    left2 = false;
  }
  if (key == 'd') {
    right2 = false;
  }
}
