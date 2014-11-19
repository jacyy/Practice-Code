PVector loc;
PVector velo;
PVector accel;
float sz = 50;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 700);
  background(70);

  loc = new PVector(width/2, height/2);
  velo = new PVector(0, 0);
  accel = new PVector(-.1, .1);
}

void draw() {
  accel.set(random(-2, 2), random(-2, 2));

  fill(frameCount%360, 32, 99);
  stroke(frameCount%360, 32, 99);

  velo.add(accel);

  velo.limit(7);

  loc.add(velo);

  ellipse(loc.x, loc.y, sz, sz);

  if (loc.x - sz/2 > width) {
    loc.x = -sz/2;
  }

  if (loc.x + sz/2 < 0) {
    loc.x = width + sz/2;
  }

  if (loc.y - sz/2 > height) {
    loc.y = - sz/2;
  }

  if (loc.y + sz/2 < 0) {
    loc.y = height + sz/2;
  }
}

