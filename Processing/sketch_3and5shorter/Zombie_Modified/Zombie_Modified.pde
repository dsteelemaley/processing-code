void setup() {
  size(800, 500);
  noStroke();
}

float zombieX = 50, zombieY = 270;
float personX = 200, personY = 270;
float bloodD = 10;
float personSize = 60;

void draw() {
  background(120, 131, 60);
  //Background
  fill(44, 122, 144);
  rect(0, 0, 800, 225);
  fill(87, 88, 83);
  rect(0, 330, 800, 150);
  fill(223, 242, 17);
  rect(0, 390, 800, 24);
  fill(87, 88, 83);
  rect(0, 399, 800, 7);
  //Clouds
  fill(209, 205, 204);
  ellipse(600, 60, 80, 50);
  fill(209, 205, 204);
  ellipse(550, 80, 100, 60);
  fill(209, 205, 204);
  ellipse(650, 80, 80, 50);
  fill(209, 205, 204);
  ellipse(610, 95, 80, 50);

  fill(209, 205, 204);
  ellipse(600-400, 60+50, 80, 50);
  fill(209, 205, 204);
  ellipse(550-400, 80+50, 100, 60);
  fill(209, 205, 204);
  ellipse(650-400, 80+50, 80, 50);
  fill(209, 205, 204);
  ellipse(610-400, 95+50, 80, 50);
  //Zombie
  fill(14, 255, 3);
  rect(zombieX-5, zombieY+50, 70, 15);
  fill(3, 108, 100);
  rect(zombieX-10, zombieY, 20, 180);
  fill(14, 255, 3);
  ellipse(zombieX, zombieY, 60, 60);
  //Person
  fill(222, 181, 76);
  rect(personX-5, personY+50, personSize+(personSize*10/60), personSize-(personSize*45/60));
  fill(48, 99, 224);
  rect(personX-10, personY, personSize-(personSize*40/60), personSize+(personSize*120/60));
  fill(222, 181, 76);
  ellipse(personX, personY, personSize, personSize);
  //AnimationX
}