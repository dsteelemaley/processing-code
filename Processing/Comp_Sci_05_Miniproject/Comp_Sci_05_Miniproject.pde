float red = 111; 
float green = 194; 
float blue = 255;
float houseX, houseY, houseWidth, houseHeight;
float sunX, sunY, sunDiam;
boolean day;
float skyMultiplier;
float chimneyX, chimneyY;
float[] smokeX = new float[100];
float[] smokeY = new float[100];
int smokeNum;


void setup() {
  frameRate(60);
  size(500, 500);
  houseWidth = 200;
  houseHeight = 200;
  houseX = width*.3 - houseWidth/2;
  houseY = height*.5-houseHeight/2+50;
  sunX = 100;
  sunY = 1000;
  sunDiam = 100;
  day = true;
  chimneyX = houseX +30;
  chimneyY = houseY - 70;
}

void draw() {
  noStroke();
  for (int i=-100; i <= height*.8; i += 2) {
    fill(int(red/400*i*skyMultiplier), int(green/400*i*skyMultiplier), int(blue/400*i*skyMultiplier));
    rect(0, i, width, 2);
    noFill();
  }
  for (int i = 0; i < smokeX.length; i++) {
    fill(180, 127);
    ellipse(smokeX[i], smokeY[i], 10, 40);
    smokeY[i] -= 1;
    smokeX[i] += 5*sin(smokeY[i]);
  }
  if (day) {
    fill(255, 255, 0);
    ellipse(sunX, sunY, sunDiam, sunDiam);
  } else {
    fill(220);
    ellipse(sunX, sunY, sunDiam, sunDiam);
    fill(180);//Holes
    ellipse(sunX - 20, sunY+20, sunDiam/4, sunDiam/4);
    ellipse(sunX + 25, sunY+17, sunDiam/4, sunDiam/4);
    ellipse(sunX - 30, sunY-10, sunDiam/4, sunDiam/4);
    ellipse(sunX +15, sunY-20, sunDiam/4, sunDiam/4);
    fill(1);
    noStroke();
  }

  fill(48, 131, 32);
  rect(0, 300, width, 200);
  fill(90, 45, 23);



  rect(houseX, houseY, houseWidth, houseHeight);
  fill(255, 28, 21);
  triangle(houseX - 20, houseY, houseX + houseWidth + 20, houseY, houseX + houseWidth/2, houseY-70);
  window(houseX + 50, houseY + 80, 40, 40, !day);
  window(houseX + 150, houseY + 80, 40, 40, !day);
  fill(90, 45, 23);
  rect(chimneyX, chimneyY, 20, 50);

  if (day) {
    sunX +=1;
    sunY = (.01)*(pow(sunX-300, 2))-80;
  } else {
    sunX+=1;
    sunY = (.01)*(pow(sunX-300, 2))-80;
  }


  if (sunY > 300 + sunDiam/2) {
    day = !day;
    sunX = 100;
    sunY = 300;
  }
  if (day) {
    skyMultiplier = (height-sunY)/228.5714285714;
  } else {
    skyMultiplier = (sunY-height/4)/200;
  }
}

void mousePressed() {
  fill(180, 127);
  if (smokeNum < 99) {
    smokeX[smokeNum] = chimneyX+10;
    smokeY[smokeNum] = chimneyY;
    smokeNum ++;
    smokeX[smokeNum] = chimneyX+10;
    smokeY[smokeNum] = chimneyY-20;
    smokeNum ++;
    smokeX[smokeNum] = chimneyX+10;
    smokeY[smokeNum] = chimneyY-30;
    smokeNum ++;
  } else {
    smokeNum = 0;
    println(".");
    smokeX[smokeNum] = chimneyX+10;
    smokeY[smokeNum] = chimneyY;
    smokeNum ++;
    smokeX[smokeNum] = chimneyX+10;
    smokeY[smokeNum] = chimneyY-20;
    smokeNum ++;
    smokeX[smokeNum] = chimneyX+10;
    smokeY[smokeNum] = chimneyY-30;
    smokeNum ++;
  }
}
