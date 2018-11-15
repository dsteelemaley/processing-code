int gridSize;

void setup() {
  size(520, 520);
  gridSize=width/(52/5);
}


void draw() {
  background(0);
  noStroke();
  fill(255);
  for (int x= 0; x<width+gridSize; x+=gridSize) {
    for (int y=0; y<height+gridSize; y+=gridSize) {
      noStroke();
      rect(x, y, 1, 1);
      stroke(255, 100);
      for (int x2=x-gridSize/2; x2<x+gridSize/2-5; x2+=gridSize/5) {
        for (int y2=y-gridSize/2; y2<y+gridSize/2-5; y2+=gridSize/5) {
          noStroke();
          rect(x2, y2, 1, 1);
          stroke(255, 100);
          line(x2,y2,x-5,y-5);
        }
      }
    }
  }
}
