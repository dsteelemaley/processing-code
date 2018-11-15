void setup(){
  size(500,500);
  background(255);
  stroke(0);
}

void draw(){
  fill(0,0,255); // make fill color blue
  ellipse(250,250,200,200); // draw a head
  fill(255); //make fill color white
  rect(220,290,60,20); // make a rectangular mouth
  ellipse(210,220,40,30); // make a left eye
  ellipse(290,220,40,30);
  fill(0); // make the fill color black
  ellipse(210,220,25,25); // make a black pupil
  ellipse(290,220,25,25);
  fill(0,255,0); // make fill color green
  ellipse(250,250,15,30); // make a green nose
}