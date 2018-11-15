float rect1X, rect1Y;

float rect2X, rect2Y;

float rect3X, rect3Y;

float rect4X, rect4Y;

float rect5X, rect5Y;

float rect6X, rect6Y;

void setup() {
  size(650, 450);
}

void draw() {
  rect1X = 50;
  rect1Y = 50;
  
  rect2X = 250;
  rect2Y = 50;
  
  rect3X = 450;
  rect3Y = 50;
  
  rect4X = 50;
  rect4Y = 250;
  
  rect5X = 250;
  rect5Y = 250;
  
  rect6X = 450;
  rect6Y = 250;
  
  background(50, 150, 75);

  fill(255);
  rect(rect1X, rect1Y, 150, 150);

  rect(rect2X, rect2Y, 150, 150);

  rect(rect3X, rect3Y, 150, 150);

  rect(rect4X, rect4Y, 150, 150);

  rect(rect5X, rect5Y, 150, 150);

  rect(rect6X, rect6Y, 150, 150);
  
  fill(0);
  //#1 Die
  ellipse(rect1X+150/2,rect1Y+150/2,30,30);
  //#2 Die
  ellipse(rect2X+30, rect2Y+30, 30, 30);
  ellipse(rect2X+120, rect2Y+120, 30, 30);
  //#3 Die
  ellipse(rect3X+150/2,rect3Y+150/2,30,30);
  ellipse(rect3X+30, rect3Y+30, 30, 30);
  ellipse(rect3X+120, rect3Y+120, 30, 30);
  //#4 Die
  ellipse(rect4X+30, rect4Y+30, 30, 30);
  ellipse(rect4X+120, rect4Y+120, 30, 30);
  ellipse(rect4X+30, rect4Y+120, 30, 30);
  ellipse(rect4X+120, rect4Y+30, 30, 30);
  //#5 Die
  ellipse(rect5X+150/2,rect5Y+150/2,30,30);
  ellipse(rect5X+30, rect5Y+30, 30, 30);
  ellipse(rect5X+120, rect5Y+120, 30, 30);
  ellipse(rect5X+30, rect5Y+120, 30, 30);
  ellipse(rect5X+120, rect5Y+30, 30, 30);
  //#6 Die
  ellipse(rect6X+30, rect6Y+30, 30, 30);
  ellipse(rect6X+120, rect6Y+120, 30, 30);
  ellipse(rect6X+30, rect6Y+120, 30, 30);
  ellipse(rect6X+120, rect6Y+30, 30, 30);
  ellipse(rect6X+30, rect6Y+75, 30, 30);
  ellipse(rect6X+120, rect6Y+75, 30, 30);
  
}