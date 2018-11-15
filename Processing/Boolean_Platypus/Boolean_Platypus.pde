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
  background(255, 0, 100);
  fill(100, 155, 255);
  fill(88, 52, 8);
  ellipse(rectX, rectY, 90, 50);
  fill(111, 68, 18);
  ellipse(rectX+45, rectY - 20, 40, 35);
  fill(67, 42, 5);
  ellipse(rectX+45+25, rectY - 20, 30, 10);
  ellipse(rectX+20, rectY + 25, 12, 20);
  ellipse(rectX-20, rectY + 25, 12, 20);
  fill(0);
  ellipse(rectX+45+5, rectY - 24, 5, 5);

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


  if (rectX > 525) {
    rectX = -25;
  }

  if (rectX < -25) {
    rectX = 525;
  }

  if (rectY > 525) {
    rectY = -25;
  }

  if (rectY < -25) {
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