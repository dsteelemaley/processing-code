int numdice = 2;

float[] x = new float[numdice];

float[] y = new float[numdice];

int[] dienumber = new int[numdice];

void setup() {
  size(800, 600);
  for (int i = 0; i < numdice; i++) {
    x[0] = random(50, 300);

    y[0] = random(50, 200);
    
    x[1] = random(x[0]+180, 600);
    
    y[1] = random(y[0]+180, 400);

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
    x[0] = random(50, 300);

    y[0] = random(50, 200);
    
    x[1] = random(x[0]+150, 600);
    
    y[1] = random(y[0]+150, 400);


    dienumber[m] = int(random(1, 7));
  }
}
