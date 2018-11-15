class Truck {
  color c;
  color wheelColor;
  float x;
  float y;
  float carLength;
  float carHeight;
  float speedX;
  float direction;

  Truck(color tempc, color wheeltemp, float xpos, float ypos, float speedTemp, float directionTemp, float lengthTemp, float gravTemp) {
    c = tempc;
    wheelColor = wheeltemp;
    x = xpos;
    y = ypos;
    carLength = lengthTemp;
    carHeight = carLength/4;
    speedX = speedTemp;
    direction = directionTemp;
  }

  void display() {
    noStroke();
    fill(c);
    pushMatrix();
    translate(x, y);
    rotate(direction);
    rectMode(CENTER);
    rect(0, 0, carLength, carHeight);
    quad(0-carLength/3, 0+carHeight/2, 0+carLength/3, 0+carHeight/2, 0+carLength/5, 0+carHeight*1.5, 0-carLength/5, 0+carHeight*1.5);

    //WHEELS
    popMatrix();
    pushMatrix();
    translate(x, y);
    rotate(direction);
    translate(-carLength/4, -carHeight/2);
    fill(wheelColor);
    ellipse(0, 0, carHeight, carHeight);
    popMatrix();
    pushMatrix();
    translate(x, y);
    rotate(direction);
    translate(+carLength/4, -carHeight/2);
    fill(wheelColor);
    ellipse(0, 0, carHeight, carHeight);
    popMatrix();
  }

  void drive() {
    if (x<width && y<height && x> 0 && y > 0) {
      pushMatrix();
      translate(x, y);
      x += speedX*cos(direction);
      y += speedX*sin(direction);
      popMatrix();
    }
    if (x>width) {
      x = 1;
    }
    if (x<0) {
      x = width-1;
    }
    if (y>height) {
      y = 1;
    }
    if (y<0) {
      y = height-1;
    }
    println(direction);
  }

  void turnRight() {
    direction -= PI/160;
  }
  void turnLeft() {
    direction += PI/160;
  }
  void resetDirection() {
    direction=0;
  }

  void gravity(float carGravity) {
    if (y-carHeight > ((groundEndY-groundStartY)*x)/(groundEndX-groundStartX)+groundStartY) {
      y-=carGravity;
    }
  }

  void gravDirection() {
    direction = atan(((groundEndY-groundStartY)/(groundEndX-groundEndY)));
    println(atan(((groundEndY-groundStartY)/(groundEndX-groundEndY))));
    println(direction);
  }

  void headlights() {
    pushMatrix();
    translate(x, y);
    rotate(direction);
    fill(255, 255, 0);
    triangle(carLength/7, 0, carLength, carHeight/2, carLength, -carHeight/2);
    popMatrix();
  }
}
