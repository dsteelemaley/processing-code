float rectX, rectY, rectWidth=50, rectHeight=50, rectHorizSpeed=3, rectVertSpeed=4;
boolean moveUp=true, moveRight=true; 
float rect2X, rect2Y, rect2Width=50, rect2Height=50, rect2HorizSpeed=4, rect2VertSpeed=5;
boolean moveUp2=false, moveRight2=true; 

void setup() {
  size(500, 500);
  rectX=width*.6;
  rectY=height*.4;
  rect2X=width*0.5;
  rect2Y=height*0.8;
}
void draw() {
  background(255, 0, 0);
  fill(255);
  rect(rectX, rectY, rectWidth, rectHeight);
  fill(0);
  rect(rect2X, rect2Y, rect2Width, rect2Height);
  if (moveUp) {
    rectY-=rectVertSpeed;
  } else {
    rectY+=rectVertSpeed;
  }
  if (moveUp2) {
    rect2Y-=rect2VertSpeed;
  } else {
    rect2Y+=rect2VertSpeed;
  }
  if (moveRight) {
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
    moveUp=false;
  }
  if (rectY + rectHeight >height) {
    moveUp=true;
  }
  if (rectX<0) {
    moveRight=true;
  }
  if (rectX + rectWidth >width) {
    moveRight=false;
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
    if (moveRight) {
      moveRight = false;
    } else {
      moveRight = true;
    }
    if (moveRight2) {
      moveRight2 = false;
    } else {
      moveRight2=true;
    }
  }
  if (dist(0, rectY, 0, rect2Y)<rectHeight && dist(rectX, 0, rect2X, 0)<dist(0, rectY, 0, rect2Y)) {
    if (moveUp) {
      moveUp = false;
    } else {
      moveUp = true;
    }
    if (moveUp2) {
      moveUp2 = false;
    } else {
      moveUp2=true;
    }
  }
}
