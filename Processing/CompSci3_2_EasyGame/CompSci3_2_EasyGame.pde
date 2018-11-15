boolean gameOver = true; 
boolean startGame = false;
float rectX = width/2+100, rectY = height/2+100, rectWidth=40, rectHeight=40, rectHorizSpeed=3, rectVertSpeed=4;
float rect2X = width/2, rect2Y = height/2, rect2Width=40, rect2Height=40, rect2HorizSpeed=5, rect2VertSpeed=4;
boolean moveUp2=false, moveRight2=true, moveUp3=true, moveRight3 = true;


float playerX, playerY, playerWidth=50, playerHeight=50, playerSpeed=5;
boolean moveUp, moveDown, moveLeft, moveRight;


void setup() {
  size(600, 600);
  fill(0, 125, 50);
  noStroke();
}

void draw() {
  background(0, 125, 50);
  if (gameOver) {
    text("Ouch!", 100, 100);
  }
  fill(255, 255, 0);
  if (startGame) {
    rectX = width/2+100;
    rectY = height/2+100;
    rect2X = width/2;
    rect2Y = height/2;
    moveUp2=false;
    moveRight2=true;
    moveUp3=true;
    moveRight3 = true;
    rectHorizSpeed=3;
    rectVertSpeed=4;
    rect2HorizSpeed=5;
    rect2VertSpeed=4;
    startGame = false;
    gameOver = false;
    playerSpeed=5;
    rectWidth=40;
    rectHeight=40;
    rect2Width=40;
    rect2Height=40;
  }
  if (!gameOver) {
    rect(playerX, playerY, playerWidth, playerHeight);
    fill(255, 170, 170);
    rect(rectX, rectY, rectWidth, rectHeight);
    rect(rect2X, rect2Y, rectWidth, rectHeight);
    textSize(16);
    if (moveUp) {
      playerY-=playerSpeed;
    }
    if (moveDown) {
      playerY+=playerSpeed;
    }
    if (!moveUp && !moveDown) {
      playerY +=0;
    }
    if (moveLeft) {
      playerX-=playerSpeed;
    }
    if (moveRight) {
      playerX+=playerSpeed;
    }
    if (!moveRight && !moveLeft) {
      playerX +=0;
    }
    if (playerX<0 || playerX+playerWidth>width) {
      moveRight = false;
      moveLeft = false;
    }
    if (playerY<0 || playerY+playerHeight>height) {
      moveUp = false;
      moveDown = false;
    }
    if (moveUp3) {
      rectY-=rectVertSpeed;
    } else {
      rectY+=rectVertSpeed;
    }
    if (moveUp2) {
      rect2Y-=rect2VertSpeed;
    } else {
      rect2Y+=rect2VertSpeed;
    }
    if (moveRight3) {
      rectX+=rectHorizSpeed;
    } else {
      rectX-=rectHorizSpeed;
    }
    if (moveRight2) {
      rect2X+=rect2HorizSpeed;
    } else {
      rect2X-=rect2HorizSpeed;
    }
    if (rectY<0) {
      moveUp3=false;
      rectHorizSpeed *= 1.02;
      rectVertSpeed *= 1.02;
      rect2HorizSpeed *= 1.02;
      rect2VertSpeed *= 1.02;
      playerSpeed*=1.11;
      rectWidth+=3;
      rectHeight+=3;
      rect2Width+=3;
      rect2Height+=3;
    }
    if (rectY + rectHeight >height) {
      moveUp3=true;
      rectHorizSpeed *= 1.02;
      rectVertSpeed *= 1.02;
      rect2HorizSpeed *= 1.02;
      rect2VertSpeed *= 1.02;
      playerSpeed*=1.11;
      rectWidth+=3;
      rectHeight+=3;
      rect2Width+=3;
      rect2Height+=3;
    }
    if (rectX<0) {
      moveRight3=true;
      rectHorizSpeed *= 1.02;
      rectVertSpeed *= 1.02;
      rect2HorizSpeed *= 1.02;
      rect2VertSpeed *= 1.02;
      playerSpeed*=1.11;
      rectWidth+=3;
      rectHeight+=3;
      rect2Width+=3;
      rect2Height+=3;
    }
    if (rectX + rectWidth >width) {
      moveRight3=false;
      rectHorizSpeed *= 1.02;
      rectVertSpeed *= 1.02;
      rect2HorizSpeed *= 1.02;
      rect2VertSpeed *= 1.02;
      playerSpeed*=1.11;
      rectWidth+=3;
      rectHeight+=3;
      rect2Width+=3;
      rect2Height+=3;
    }
    if (rect2Y<0) {
      moveUp2=false;
    }
    if (rect2Y + rect2Height >height) {
      moveUp2=true;
    }
    if (rect2X<0) {
      moveRight2=true;
    }
    if (rect2X + rect2Width >width) {
      moveRight2=false;
    }  
    if (dist(rectX, 0, rect2X, 0)<rectWidth && dist(0, rectY, 0, rect2Y) < dist(rectX, 0, rect2X, 0)) {
      if (moveRight3) {
        moveRight3 = false;
      } else {
        moveRight3 = true;
      }
      if (moveRight2) {
        moveRight2 = false;
      } else {
        moveRight2=true;
      }
    }
    if (dist(0, rectY, 0, rect2Y)<rectHeight && dist(rectX, 0, rect2X, 0)<dist(0, rectY, 0, rect2Y)) {
      if (moveUp3) {
        moveUp3 = false;
      } else {
        moveUp3 = true;
      }
      if (moveUp2) {
        moveUp2 = false;
      } else {
        moveUp2=true;
      }
    }
    if (dist(rectX, 0, playerX, 0)<rectWidth && dist(0, rectY, 0, playerY) < dist(rectX, 0, playerX, 0)) {
      gameOver = true;
    }
    if (dist(0, rectY, 0, playerY)<rectHeight && dist(rectX, 0, playerX, 0)<dist(0, rectY, 0, playerY)) {
      gameOver = true;
    }
    if (dist(rect2X, 0, playerX, 0)<rect2Width && dist(0, rect2Y, 0, playerY) < dist(rect2X, 0, playerX, 0)) {
      gameOver = true;
    }
    if (dist(0, rect2Y, 0, playerY)<rect2Height && dist(rect2X, 0, playerX, 0)<dist(0, rect2Y, 0, playerY)) {
      gameOver = true;
    }
  }
}
void keyPressed() {
  if (keyCode==UP) {
    moveUp=true;
    if (gameOver) {
      startGame = true;
    }
  } else {
    moveUp=false;
  }
  if (keyCode==DOWN) {
    moveDown=true;
    if (gameOver) {
      startGame = true;
    }
  } else {
    moveDown=false;
  }
  if (keyCode==LEFT) {
    moveLeft=true;
    if (gameOver) {
      startGame = true;
    }
  } else {
    moveLeft= false;
  }
  if (keyCode==RIGHT) {
    moveRight=true;
    if (gameOver) {
      startGame = true;
    }
  } else {
    moveRight=false;
  }
}
