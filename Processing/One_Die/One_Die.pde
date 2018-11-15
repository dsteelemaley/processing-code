int numdice = 10;

float[] x = new float[numdice];

float[] y = new float[numdice];

int[] dienumber = new int[numdice];

void setup() {
  size(800, 600);
  for (int i = 0; i < numdice; i++) {
    x[i] = random(50, 600);

    y[i] = random(50, 400);

    dienumber[i] = int(random(1, 7));
  }
}


void draw() {
  background(50,150,75);
  for (int p = 0; p < numdice; p++) {
    die(x[p], y[p], dienumber[p]);
  }
}

void mouseClicked() {
  for (int m = 0; m < numdice; m++) {
    x[m] = random(50, 600);

    y[m] = random(50, 400);

    dienumber[m] = int(random(1, 7));
  }
}