float a=5, b=6, c=2, d=4;

// print the distance between the points (a,b) and (c,d)
void draw() {
  println(calculateAverage(a,b,c));
  printSum(a, b);
  println("The distance between (", a, ",", b, ") and (", c, ",", d, ") is:");
  println(distance(a, b, c, d));
  noLoop(); //stop the loop
}

// here (after the draw loop) we define what we mean by the method "distance".
// start by saying "this function will return a float, i.e. the output is a float"
// then say that it is called "distance"
// then say that it takes four inputs (x1, y1, x2 and y2) and they are all floats.
float distance(float x1, float y1, float x2, float y2) {
  // now say what to do with these inputs to produce the output.
  return sqrt(pow(x1-x2, 2)+pow(y1-y2, 2)); // you can confirm this with the Pythagorean theorem...
}

void printSum(float x1, float x2) {
  float x3 = x1 + x2;
  println(a, " + ", b, " = ", x3);
} 

float calculateAverage(float x1, float x2, float x3) {
  return (x1+x2+x3)/3;
}
