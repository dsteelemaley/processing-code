boolean right=true;
boolean left=false;
boolean up=false;
boolean down=false;

void setup() {
  size(500, 500);
}
float rectX = 250;
float rectY = 250;
void draw() {
  rect(rectX,rectY, 100,100);
  if (up) {
    rectY -= 3;
  }

  if (down) {
    rectY += 3;
  }

  if (right) {
    rectX += 3;
  }

  if (left) {
    rectX -= 3;
  }

  if (rectX > 500) {
    rectX = -25;
  }

  if (rectX < 0) {
    rectX = 525;
  }

  if (rectY > 500) {
    rectY = -25;
  }

  if (rectY < 0) {
    rectY = 525;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      right=false;
      down=false;
      up=true; 
      left=false;
    }
    if (keyCode == DOWN) {
      right=false;
      down=true;
      up=false; 
      left=false;
    }
    if (keyCode == RIGHT) {
      right=true;
      down=false;
      up=false; 
      left=false;
    }
    if (keyCode == LEFT) {
      right=false;
      down=false;
      up=false; 
      left=true;
    }
  }
}