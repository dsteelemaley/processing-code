float rectX, rectY;

boolean right=true;
boolean left=false;
boolean up=false;
boolean down=false;

int direction;
int arrow;

void setup() {
  frameRate(10);
  size(700, 700);
  rectX = 300;
  rectY = 300;
}

void draw() {
  strokeWeight(1);
  direction = int(random(1, 5));
  background(100, 0, 150);
  rect(rectX, rectY, 50, 50);
  if (up) {
    rectY -= 2.333333;
  }

  if (down) {
    rectY += 2.333333;
  }

  if (right) {
    rectX += 2.333333;
  }

  if (left) {
    rectX -= 2.333333;
  }
  if (right == true) {

    arrow = 1;
  }
  if (left == true) {

    arrow = 2;
  }
  if (up == true) {

    arrow = 3;
  }
  if (down == true) {

    arrow = 4;
  }
  /*if (arrow == 1) {
    strokeWeight(4);
    line(rectX, rectY+25, rectX+45, rectY+25);
    triangle(rectX+45, rectY+25, rectX+35, rectY+15, rectX+35, rectY+35);
  }
  if (arrow == 2) {
    strokeWeight(4);
    line(rectX+5, rectY+25, rectX+50, rectY+25);
    triangle(rectX+5, rectY+25, rectX+15, rectY+15, rectX+15, rectY+35);
  }
  if (arrow == 3) {
    strokeWeight(4);
    line(rectX+25, rectY+5, rectX+25, rectY+50);
    triangle(rectX+25, rectY+5, rectX+15, rectY+15, rectX+35, rectY+15);
  }
  if (arrow == 4) {
    strokeWeight(4);
    line(rectX+25, rectY, rectX+25, rectY+45);
    triangle(rectX+25, rectY+45, rectX+15, rectY+35, rectX+35, rectY+35);
  }*/
  if (direction == 1) {
      right = true;
      left = false;
      up = false;
      down = false;
      arrow = 1;
    }
    if (direction == 2) {
      right = false;
      left = true;
      up = false;
      down = false;
      arrow = 2;
    }
    if (direction == 3) {
      right = false;
      left = false;
      up = true;
      down = false;
      arrow = 3;
    }
    if (direction == 4) {
      right = false;
      left = false;
      up = false;
      down = true;
      arrow = 4;
    }
}

void keyPressed() {
  if (key == ' ') {
    if (direction == 1) {
      right = true;
      left = false;
      up = false;
      down = false;
      arrow = 1;
    }
    if (direction == 2) {
      right = false;
      left = true;
      up = false;
      down = false;
      arrow = 2;
    }
    if (direction == 3) {
      right = false;
      left = false;
      up = true;
      down = false;
      arrow = 3;
    }
    if (direction == 4) {
      right = false;
      left = false;
      up = false;
      down = true;
      arrow = 4;
    }
  }
}
