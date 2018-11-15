float rectX, rectY, rectWidth=50, rectHeight=50, rectHorizSpeed=3, rectVertSpeed=0;
boolean moveUp=true, moveRight=true; 
float rect2X, rect2Y, rect2Width=50, rect2Height=50, rect2HorizSpeed=4, rect2VertSpeed=0;
boolean moveUp2=true, moveRight2=true; 

void setup() {
  size(500, 500);
  rectX=width*.8;
  rectY=height*.5;
  rect2X=width*0.2;
  rect2Y=height*0.5;
  
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
  if (rectY + rectHeight >width) {
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
  if (rect2Y + rect2Height >width) {
    moveUp2=true;
  }
  if (rect2X<0) {
    moveRight2=true;
  }
  if (rect2X + rect2Width >width) {
    moveRight2=false;
  }  
  if (moveRight == true && moveRight2 == false && rectX + rectWidth > rect2X && rectY + rectHeight > rect2Y && rectY < rect2Y + rect2Height) {
    moveRight=false;
    moveRight2=true;
  }
  if (moveRight == false && moveRight2 == true && rectX + rectWidth > rect2X && rectX < rect2X+rectWidth && rectY + rectHeight > rect2Y && rectY < rect2Y + rect2Height) {
    moveRight=true;
    moveRight2=false;
  }

}
