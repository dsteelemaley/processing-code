void drawDuck(float dX,float dY) {
  float duckX=dX, duckY=dY;
  fill(251, 255, 26);
  ellipse(duckX, duckY, 45, 20);
  rect(duckX-17, duckY-20, 7, 20);
  ellipse(duckX-17, duckY-17, 20, 12);
  fill(0);
  rect(duckX-27, duckY-16, 7, 2);
  rect(duckX-24, duckY-20, 2, 2);
}