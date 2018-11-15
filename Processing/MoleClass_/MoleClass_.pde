Mole m1;

//Top Left
float hole1x = 150;
float hole1y = 150;
//Top Right
float hole2x = 850;
float hole2y = 150;
//Middle
float hole3x = 500;
float hole3y = 320;
//Rightish Middle
float hole4x = 700;
float hole4y = 450;
//Leftish Middle
float hole5x = 300;
float hole5y = 450;

int molehole;

float moleX;
float moleY;

int score = 0;

boolean started = false;

float startingtime = 15;
float timer = startingtime;

float second = 1;

boolean win;

void setup() {
  size(1000, 600);
  frameRate(60);
  background(100, 50, 150);
  m1 = new Mole();
  m1.hole = 0;
}

void draw() {
  m1.update();
  if (started) {
    timer -= second/frameRate;
  }

  //This is the background setup including the mole holes
  background(100, 50, 150);

  //Holes!
  fill(255);
  //Top Left
  ellipse(hole1x, hole1y, 100, 100);

  //Top right
  ellipse(hole2x, hole2y, 100, 100);

  //Middle
  ellipse(hole3x, hole3y, 100, 100);

  //Rightish Middle
  ellipse(hole4x, hole4y, 100, 100);

  //Leftish Middle
  ellipse(hole5x, hole5y, 100, 100);

  fill(170, 116, 50);
  ellipse(m1.x+20, m1.y-20, 10, 20);
  fill(170, 116, 50);
  ellipse(m1.x-20, m1.y-20, 10, 20);
  fill(108, 61, 3);
  ellipse(m1.x, m1.y+15, 90, 70);
  fill(0);
  ellipse(m1.x-15, m1.y, 5, 5);
  ellipse(m1.x+15, m1.y, 5, 5);
  ellipse(m1.x, m1.y + 15, 5, 5);
  arc(m1.x, m1.y + 25, 50, 20, 0, PI);

  fill(0);
  textSize(12);
  text("You have whacked", 100, 50);
  text(score, 230, 50);
  text("moles", 260, 50);
  text("Time:", 800, 50);
  text(timer, 850, 50);
  if (started == false & timer > 0) {
    textSize(80);
    text("Click Anywhere to Start", 50, 250);
  }
  if (timer <= 0) {
    started = false;
    timer = 0;
    m1.x = -1000;
    m1.y = -1000;

    if (score < startingtime) {
      fill(185, 0, 0);
      win = false;
    }

    if (score >= startingtime) {
      fill (0, 129, 16);
      win = true;
    }

    rect(-10, -10, 10000, 10000);
    textSize(40);
    if (win == true) {
      fill(0);
      text("You Won! You whacked at least", 150, 300);
      text(int(startingtime), 350, 360);
      text("moles", 420, 360);
      text("Moles whacked:", 300, 420);
      text(score, 650, 420);
    }
    if (win == false) {
      fill(0);
      text("You Lost... You could not whack", 150, 200);
      text(int(startingtime), 350, 260);
      text("moles", 420, 260);
      text("Moles whacked:", 300, 420);
      text(score, 650, 420);
    }
    noLoop();
  }
}

void mouseClicked() {
  if (started) {
    if (mouseX > m1.x - 50 & mouseX < m1.x +50 & mouseY > m1.y - 50 & mouseY < m1.y+ 50) {
      m1.newHole();
    }
  }
  if (started == false & timer > 0) {
    started = true;
    m1.hole = int(random(1, 6));
  }
}