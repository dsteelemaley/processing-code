float population; 
float ballD;
float[] ballX = new float[1];
float[] ballY = new float [1];
boolean[]moveRight =new boolean[1];
boolean[]moveDown =new boolean[1];
boolean[]moveLeft=new boolean[1];
boolean[]moveUp =new boolean[1];

void setup() {
  size(800, 500);
  background(50, 50, 100);
  stroke(0);
  ballX[0] = random(50, 450);
  ballY[0] = random(50, 450);
  moveRight[0] = true;
  moveUp[0] = true;
  moveDown[0] = false;
  moveLeft[0] = false;
  population = 1;
  ballD = 50;
}

void draw() {
  background(50, 50, 100);
  for (int i = 0; i < ballX.length; i++) {
    ellipse(ballX[i], ballY[i], ballD, ballD);
    if (ballX[i]+(ballD/2)>800) {
      moveRight[i]=false;
      moveLeft[i]=true;
      population *= 1.04;
    }
    //If it is off the screen on the left, bounce back
    if (ballX[i]-(ballD/2)<0) {
      moveRight[i]=true;
      moveLeft[i]=false;
      population *= 1.04;
    }
    //If off the screen on the top bounce back
    if (ballY[i]-(ballD/2)<0) {
      moveUp[i]=false;
      moveDown[i]=true;
      population *= 1.04;
    }
    //If off the screen on the bottom bounce back
    if (ballY[i]+(ballD/2)>500) {
      moveUp[i]= true;
      moveDown[i]= false;
      population *= 1.04;
    }

    //If (boolean) is true then make it move in this certain way
    if (moveRight[i]) {
      ballX[i]+=10;
    }
    if (moveDown[i]) {
      ballY[i] +=10;
    }
    if (moveLeft[i]) {
      ballX[i]-=10;
    }
    if (moveUp[i]) {
      ballY[i] -=10;
    }
    text(population, 150, 100);
    text(ballX.length, 100, 100);
  }
  if (ballX.length < floor(population)) {
    ballX = expand(ballX,1);
    ballY = expand(ballY,1);
    moveRight = expand(moveRight,floor(population));
    moveDown = expand(moveRight,floor(population));
    moveUp = expand(moveRight,floor(population));
    moveLeft = expand(moveRight,floor(population));
  }
}