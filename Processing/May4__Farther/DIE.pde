void die (float x, float y, int dieface) {
  fill(255);
  rect(x, y, 150, 150);

  fill(0);
  if (dieface < 7 & dieface > 0) {
    //#1 Die
    if (dieface==1) {
      ellipse(x+150/2, y+150/2, 30, 30);
    }
    if (dieface==2) {
      //#2 Die
      ellipse(x+30, y+30, 30, 30);
      ellipse(x+120, y+120, 30, 30);
    }
    if (dieface==3) {
      //#3 Die
      ellipse(x+150/2, y+150/2, 30, 30);
      ellipse(x+30, y+30, 30, 30);
      ellipse(x+120, y+120, 30, 30);
    }
    if (dieface==4) {
      //#4 Die
      ellipse(x+30, y+30, 30, 30);
      ellipse(x+120, y+120, 30, 30);
      ellipse(x+30, y+120, 30, 30);
      ellipse(x+120, y+30, 30, 30);
    }
    if (dieface==5) {
      //#5 Die
      ellipse(x+150/2, y+150/2, 30, 30);
      ellipse(x+30, y+30, 30, 30);
      ellipse(x+120, y+120, 30, 30);
      ellipse(x+30, y+120, 30, 30);
      ellipse(x+120, y+30, 30, 30);
    }
    if (dieface==6) {
      //#6 Die
      ellipse(x+30, y+30, 30, 30);
      ellipse(x+120, y+120, 30, 30);
      ellipse(x+30, y+120, 30, 30);
      ellipse(x+120, y+30, 30, 30);
      ellipse(x+30, y+75, 30, 30);
      ellipse(x+120, y+75, 30, 30);
    }
  }
}