PImage theimage;
//Int is a variable integer
int framerate = 60;
int numFaces = 1;

//Color variables store colors, floats store decimal numbers, booleans store true or false values
//The [] means that they are all arrays, which can store multiple values, if you input
//The value as in (ballX[4]=400) numFaces is the variable we created at the top
color[] colors= new color[numFaces];
float[] ballX= new float[numFaces];
float[] ballY=new float[numFaces];
float[] ballD=new float[numFaces];
float[] ballXSpeed = new float[numFaces];
float[] ballYSpeed = new float[numFaces];
boolean[] moveRight= new boolean[numFaces];
boolean[] moveLeft= new boolean[numFaces];
boolean[] moveUp= new boolean[numFaces];
boolean[] moveDown= new boolean[numFaces];

//Setup runs once each time the program runs you use it to set the size() and
//To initialize variables
void setup() {
  theimage = loadImage("test.png");
  //Framerate sets the framerate = to the framerate variable we made at the top
  frameRate(framerate);
  //Size sets the size of the canvas
  size(1200, 800);
  //In a for loop you create a variable, say how long it should be
  //And then tell it to increase the variable by one each time
  for (int i=0; i<ballX.length; i++) {
    //By using i in the array, it runs through all of the different values in the array
    //Random sets a random value between the first and last variable
    //I used it to set a random intial location for the ball
    ballX[i]=random(100, 1100);
    ballY[i]=random(100, 700);

    //And for the Diameter
    ballD[i]=random(100, 150);

    //Oh and the colors. a color variable takes RGB values and stores them.
    colors[i]=color(random(1, 255), random(1, 255), random(1, 255));

    //And to randomize the speed
    ballXSpeed[i]=int(random(2, 3));
    ballYSpeed[i]=int(random(2, 3));

    //This is randomized by making each starting movement represented by a number,
    //and whenever the int movement is 1,2,3 or 4 it makes the ball move that way.
    int movement = int(random(1, 5));
    if (movement == 1) {
      moveRight[i]=true;
      moveLeft[i]=false;
      moveUp[i]=true;
      moveDown[i]=false;
    }
    if (movement == 2) {
      moveRight[i]=true;
      moveLeft[i]=false;
      moveUp[i]=false;
      moveDown[i]=true;
    }
    if (movement == 3) {
      moveRight[i]=false;
      moveLeft[i]=true;
      moveUp[i]=true;
      moveDown[i]=false;
    }
    if (movement == 4) {
      moveRight[i]=false;
      moveLeft[i]=true;
      moveUp[i]=false;
      moveDown[i]=true;
    }
  }
}

//Draw runs once every frame
void draw() {
  //Having background in the draw loop makes it refresh each time
  background(0);
  //For loop explained above, this one updates every frame though
  for (int i=0; i<ballX.length; i++) {
    //drawFace is a loop that is defined in the other tab, or below.
    //I configured it to have 4 inputs
    drawFace(ballX[i], ballY[i], ballD[i], colors[i], color(50, 50, 255), true);
    //Basically if the ball is off the screen on the right, bounce back
    if (ballX[i]+(ballD[i]/2)>1200) {
      moveRight[i]=false;
      moveLeft[i]=true;
      colors[i] = color(random(1, 255), random(1, 255), random(1, 255));
      ballXSpeed[i]=int(random(2, 3));
      ballYSpeed[i]=int(random(2, 3));
    }
    //If it is off the screen on the left, bounce back
    if (ballX[i]-(ballD[i]/2)<0) {
      moveRight[i]=true;
      moveLeft[i]=false;
      colors[i] = color(random(1, 255), random(1, 255), random(1, 255));
      ballXSpeed[i]=int(random(2, 3));
      ballYSpeed[i]=int(random(2, 3));
    }
    //If off the screen on the top bounce back
    if (ballY[i]-(ballD[i]/2)<0) {
      moveUp[i]=false;
      moveDown[i]=true;
      colors[i] = color(random(1, 255), random(1, 255), random(1, 255));
      ballXSpeed[i]=int(random(2, 3));
      ballYSpeed[i]=int(random(2, 3));
    }
    //If off the screen on the bottom bounce back
    if (ballY[i]+(ballD[i]/2)>800) {
      moveUp[i]= true;
      moveDown[i]= false;
      colors[i] = color(random(1, 255), random(1, 255), random(1, 255));
      ballXSpeed[i]=int(random(2, 3));
      ballYSpeed[i]=int(random(2, 3));
    }

    //If (boolean) is true then make it move in this certain way
    if (moveRight[i]) {
      ballX[i]+=ballXSpeed[i];
    }
    if (moveDown[i]) {
      ballY[i] +=ballYSpeed[i];
    }
    if (moveLeft[i]) {
      ballX[i]-=ballXSpeed[i];
    }
    if (moveUp[i]) {
      ballY[i] -=ballYSpeed[i];
    }
  }
}