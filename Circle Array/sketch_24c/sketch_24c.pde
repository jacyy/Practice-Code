int []x = {
  106, 402, 77, 2, 231
};
int []y = {
  310, 640, 270, 15, 572
};
int []sz = {
  70, 50, 57, 45, 67
};
int []speedx = {
  3, 2, -1, 6, -3
};
int []speedy = {
  -6, -4, 1, 2, 4
};
int []h = {
  324, 216, 158, 64, 0
};

void setup() {
  size(400, 300);
  colorMode(HSB, 360, 100, 100);
  noStroke();
}

void draw() {
  background(0);

  for (int i = 0; i < x.length; i++) {
    
    fill(h[i], 23, 99, 180);

    ellipse(x[i], y[i], sz[i], sz[i]);
    x[i] += speedx[i];
    y[i] += speedy[i];

    if (x[i] > width-sz[i]/2) {
      speedx[i] = -abs(speedx[i]);
    }

    if (y[i] > height-sz[i]/2) {
      speedy[i] = -abs(speedy[i]);
    }

    if (x[i] < sz[i]/2) {
      speedx[i] = abs(speedx[i]);
    }

    if (y[i] < sz[i]/2) {
      speedy[i] = abs(speedy[i]);
    }
  }
}

