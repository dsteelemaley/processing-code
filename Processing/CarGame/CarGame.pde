Truck littleCar;
Truck BIGCAR;
boolean drive;
boolean drive2;
boolean right;
boolean left;
boolean right2;
boolean left2;
float groundStartY = 100;
float groundEndY = 200;
float groundEndX;
float groundStartX = 0;
float gravity = 1.1;

void setup() {
  size(600, 600);
  groundEndX = width;
  frameRate(180);
  littleCar = new Truck(color(255, 0, 0), color(10), width/2, height/2, 1, 0, 100, gravity);
  BIGCAR = new Truck(color(138, 148, 245), color(0), 5, height, 2, 0, 20, gravity);
  drive = false;
  littleCar.gravDirection();
}

void draw() {
  translate(0, height);
  scale(1, -1);
  background(255);
  stroke(1);
  line(0, groundStartY, width, groundEndY);
  noStroke();
  println(atan(((groundEndY-groundStartY)/(groundEndX-groundEndY))));
  littleCar.gravity(gravity);
  littleCar.headlights();
  BIGCAR.headlights();
  littleCar.display();
  BIGCAR.display();
  if (drive) {
    littleCar.drive();
  }
  if (drive2) {
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
    if (keyCode == UP) {
      drive = true;
    }
  }
  if (key== 'a') {
    left2 = true;
  }
  if (key=='d') {
    right2 = true;
  }
  if (key=='z') {
    littleCar.resetDirection();
    BIGCAR.resetDirection();
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
    if (keyCode == UP) {
      drive = false;
    }
  }
  if (key == 'a') {
    left2 = false;
  }
  if (key == 'd') {
    right2 = false;
  }
}
