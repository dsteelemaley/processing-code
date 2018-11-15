size(520,520); 
background(0); 

int gridSize = 10;

for (int n = 0; n <= width; n +=gridSize*4) {
  for (int m = 0; m <= width; m +=gridSize*4) {
    for (int x = 1; x <= gridSize*5; x += gridSize) {
      for (int y = 1; y <=gridSize*5; y += gridSize) {
        noStroke();
        fill(255);
        rect(x-1+n, y-1+m, 1, 1);
        stroke(255, 100);
        line(x+n-1, y+m-1, gridSize*2+n, gridSize*2+m);
      }
    }
  }
}
