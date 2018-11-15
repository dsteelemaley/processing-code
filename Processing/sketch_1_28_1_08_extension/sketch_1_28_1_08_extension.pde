float line1 = 100, line4 = 100;
float line2 = 100, line3 = 400;

void setup() {
  size(1000, 800);
  strokeWeight(3);
  frameRate(60);
}

void draw () {
  background (200,0,255);
  line(line1, line2, line3, line4);
  line(line1+((line3-line1)/2) + -(line4-line2)/2, line2+((line4-line2)/2)+ (line3-line1)/2, line1+((line3-line1)/2)+ (line4-line2)/2, line2+((line4-line2)/2)+ - (line3-line1)/2);
  line3 = mouseX;
  line4 = mouseY;
}