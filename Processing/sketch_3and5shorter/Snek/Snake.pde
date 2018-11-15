class Snake {
  int snakeSpeed;
  int[] x = new int[100];
  int[] y = new int[100];
  int foodX;
  int foodY;
  boolean dead = false;

  Snake(int snakeSpeedTemp) {
    snakeSpeed = snakeSpeedTemp;
    x[0] = 0;
    y[0] = 0;
    foodX = 15*int(random(0, width/15));
    foodY = 15*int(random(0, height/15));
    for (int i = 1; i < x.length; i++) {
      x[i] = x[i-1]-15;
      y[i] = y[i-1];
    }
  }
  void update(boolean dirX, boolean dirX2, boolean dirY, boolean dirY2) {
    for (int i = x.length-1; i > 0; i--) {
      x[i] = x[i-1];
    }
    for (int i = x.length-1; i > 0; i--) {
      y[i] = y[i-1];
    }
    if (dirX) {
      x[0] += snakeSpeed;
    }
    if (dirX2) {
      x[0] -= snakeSpeed;
    }
    if (dirY2) {
      y[0] += snakeSpeed;
    }
    if (dirY) {
      y[0] -= snakeSpeed;
    }
  }

  void show() {
    fill(255);
    for (int i = 0; i < x.length; i++) {
      rect(x[i], y[i], 15, 15);
    }
    textSize(30);
    text(x.length, 50, 50);
  }
  void food() {
    fill(255, 0, 0);
    rect(foodX, foodY, width/40, height/40);
  }

  void checkEat() {
    if (dist(foodX, foodY, x[0], y[0])<15) {
      x = append(x, x[4]);
      y = append(y, x[4]);
      foodX = 15*int(random(0, width/15));
      foodY = 15*int(random(0, height/15));
    }
  }

  void die() {
    for (int i = 1; i < x.length; i++) {
      if (dist(x[0], y[0], x[i], y[i])<15 || x[0] < 0 || y[0] < 0 || x[0] > width-15 || y[0] > height-15) {
        dead = true;
      }
      if (dead == true) {
        println("dead");
        background(77, 28, 28);
        textSize(50);
        text("You died!", width/2-100, height/2-100);
        textSize(20);
        text("Snake Length:", width/2-80, height/2+20);
        text(x.length, width/2+70, height/2+20);
      }
    }
  }

  void again() {
    dir = true;
    dir2 = false;
    dir3 = false;
    dir4 = false;
    x = new int[5];
    y = new int[5];
    x[0] = 0;
    y[0] = 0;
    foodX = 15*int(random(0, width/15));
    foodY = 15*int(random(0, height/15));
    for (int i = 1; i < x.length; i++) {
      x[i] = x[i-1]-15;
      y[i] = y[i-1];
    }
  }
}
