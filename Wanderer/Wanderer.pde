float locx, locy;
float velox, veloy;
float accelx, accely;
float sz = 50;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 700);
  background(70);
  locx = width/2;
  locy = height/2;
  velox = 0;
  veloy = 0;
  accelx = random(-.1, .1);
  accely = random(-.1, .1);
}

void draw() {
  accelx = random(-2, 2);
  accely = random(-2, 2);

  fill(frameCount%360, 32, 99);
  stroke(frameCount%360, 32, 99);

  velox += accelx;
  veloy += accely;

  velox = constrain(velox, -10, 10);
  veloy = constrain(veloy, -10, 10);

  locx += velox;
  locy += veloy;

  ellipse(locx, locy, sz, sz);

  if (locx - sz/2 > width) {
    locx = -sz/2;
  }

  if (locx + sz/2 < 0) {
    locx = width + sz/2;
  }

  if (locy - sz/2 > height) {
    locy = - sz/2;
  }

  if (locy + sz/2 < 0) {
    locy = height + sz/2;
  }
}

