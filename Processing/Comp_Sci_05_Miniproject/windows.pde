void window(float x1, float y1, float wWidth, float wHeight, boolean illuminated) {
  rectMode(CENTER);
  stroke(116, 79, 42);
  strokeWeight(8);
  if (illuminated) {
    fill(254,255,46);
  }
  if (!illuminated) {
    fill(0);
  }
  rect(x1, y1, wWidth, wHeight);
  noStroke();
  rectMode(CORNER);
}
