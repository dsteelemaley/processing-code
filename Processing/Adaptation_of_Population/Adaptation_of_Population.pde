float population = 1;
float ballX[] = new float [floor(population)];
float ballY[]= new float [floor(population)];
int ballD;
boolean moveUP[]= new boolean [floor(population)];
boolean moveLEFT[]= new boolean [floor(population)];
boolean moveDOWN[]= new boolean [floor(population)];
boolean moveRIGHT[]= new boolean [floor(population)];


void setup() {
  size(800, 500);
  background(100, 50, 150);
  for (int i = 0; i < ballX.length; i++) {
    ballX[i] = random(50, 750);
    ballY[i] = random(50, 450);
    moveLEFT[i] = true;
    moveDOWN[i] = false;
    ballD = 50;
  }
}

void draw() {
  int balls = moveDOWN.length;
  background(250, 10, 50);
  text(balls, 100, 100);
  text(population, 150, 100);
  for (int i = 0; i < ballX.length; i++) {
    ellipse(ballX[i], ballY[i], ballD, ballD);
    if (moveUP[i]) {
      ballY[i]-=1;
    }
    if (moveDOWN[i]) {
      ballY[i]+=1;
    }
    if (moveRIGHT[i]) {
      ballX[i]+=10;
    }
    if (moveLEFT[i]) {
      ballX[i]-=10;
    }
    if (ballX[i] > (800 - (ballD/2))) {
      moveRIGHT[i] = false;
      moveLEFT[i] = true;
      population *= 1.10;
    }
    if (ballY[i] > (500 - (ballD/2))) {
      moveUP[i] = true;
      moveDOWN[i] = false;
      //  population += .15;
    }
    if (ballX[i] < (0+ballD/2)) {
      moveRIGHT[i] = true;
      moveLEFT[i] = false;
      population *=1.10;
    }
    if (ballY[i] < (0+ballD/2)) {
      moveUP[i] = false;
      moveDOWN[i] = true;
      // population += .15;
    }
  }
  if (floor(population) > balls) {
    ballX = append(ballX, random(50, 750));
    ballY = append(ballY, random(50, 450));
    moveUP = (boolean[])append(moveUP, true);
    moveDOWN = (boolean[])append(moveDOWN, false);
    moveRIGHT = (boolean[])append(moveRIGHT, false);
    moveLEFT = (boolean[])append(moveLEFT, false);
  }
  text(balls, 100, 100);
  text(population, 150, 100);
}


void mouseClicked() {
  ballX = append(ballX, random(50, 750));
  ballY = append(ballY, random(50, 450));
  moveUP = (boolean[])append(moveUP, true);
  moveDOWN = (boolean[])append(moveDOWN, false);
  moveRIGHT = (boolean[])append(moveRIGHT, false);
  moveLEFT = (boolean[])append(moveLEFT, false);
}