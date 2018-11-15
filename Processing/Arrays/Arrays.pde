float[] faceX = {100, 400, 100, 400};
float[] faceY = {100, 100, 400, 400};
float[] faceD = new float[4];

void setup() {
  noStroke();
  size(500, 500);
  background(50, 50, 255);
  for (int i = 0; i < faceX.length; i++) {
    drawCircle(faceX[i], faceY[i], 100, 0,0,0,0);
  }
}

void draw(){
  for (int i = 0; i < faceX.length; i++) {
    drawFace(faceX[i],faceY[i],100,10,150);
  }
}
