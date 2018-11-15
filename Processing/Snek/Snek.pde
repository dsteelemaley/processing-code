Snake s;
boolean dir = true;
boolean dir2;
boolean dir3;
boolean dir4;

void setup() {
  size(600, 600);
  s = new Snake(width/40);
  frameRate(10);
}

void draw() {
  background(20);
  s.checkEat();
  s.show();
  s.food();
  s.update(dir, dir2, dir3, dir4);
  s.die();
}

void keyPressed() {

  if (key == CODED) {
    if (keyCode == RIGHT && dir2 == false) {
      dir = true;
      dir2 = false;
      dir3 = false;
      dir4 = false;
    }
    if (keyCode == LEFT && dir == false) {
      dir = false;
      dir2 = true;
      dir3 = false;
      dir4 = false;
    }
    if (keyCode == UP && dir4 == false) {
      dir = false;
      dir2 = false;
      dir3 = true;
      dir4 = false;
    }
    if (keyCode == DOWN && dir3 == false) {
      dir = false;
      dir2 = false;
      dir3 = false;
      dir4 = true;
    }
  }
  if (key == ENTER) {
    s.again();
    s.dead = false;
  }
}
