class Mole {
  float x, y;
  float hole;
  void update() {
    if (hole == 0) {
      x = -1000;
      y = -1000;
    }
    if (hole == 1) {
      x = hole1x;
      y = hole1y;
    }

    if (hole == 2) {
      x = hole2x;
      y = hole2y;
    }

    if (hole == 3) {
      x = hole3x;
      y = hole3y;
    }

    if (hole == 4) {
      x = hole4x;
      y = hole4y;
    }

    if (hole == 5) {
      x = hole5x;
      y = hole5y;
    }
  }
  void newHole(){
    hole = int(random(1,6));
    score += 1;
  }
}