//Setup runs once at the beginning of the program
void setup() {
  //Size creates a canvas of this amount of this amount of pixels by this amount of pixels
  size(600, 600); 
  //Background creates a colored background that can be drawn over
  background(0, 92, 24);
}

//The draw runs once every frame
void draw() {
  //If statements evaluate if a statement is true
  if (mousePressed & mouseY < 300) {
    if (mouseX < 300) {
      fill(218, 165, 32);
    } else { //Else statements run if the if statement is false
      fill(0, 255, 244);
    }
    //Ellipse creates an ellipse at (x,y) with (a,b) dimensions
    ellipse(mouseX, mouseY, 50, 50);
  }
  if (mousePressed & mouseY > 300) {
    if (mouseX > 300) {
      fill(128, 0, 128);
    } else {
      fill(255, 0, 0);
    }
    //Same as ellipse but with a rectangle, but its first point is the top left corner
    rect(mouseX-25, mouseY-25, 50, 50);
  }
  if (keyPressed) {
    if (key == 'b' || key == 'B') {
      background(0, 92, 24);
    }
  }
}