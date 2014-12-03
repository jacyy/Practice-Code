GravityBall[] g = new GravityBall[100];

void setup() {
  size(displayWidth, displayHeight);
  for (int i = 0; i < g.length; i++) {
    g[i] = new GravityBall();
  }
  noCursor();
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(0, 0, 99);
  for (int i = 0; i < g.length; i ++) {
    g[i].display();
    g[i].move();
    g[i].bounce();
  }
}

// declare GravityBall variables
class GravityBall {
  PVector loc, velo, acc;
  float sz;

  // initialize GravityBall variables
  GravityBall() {
    sz = random(30, 80);
    velo = new PVector(random(5, 18), random(5, 20));
    acc = new PVector(0, .1);
    loc = new PVector(random(0, width), random(0, height));
  }

  // what the GravityBall does

  void display() {
    fill(frameCount%(random(360)), 20, 100, 50);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    velo.add(acc);
    loc.add(velo);
  }

  void bounce() {
    if (loc.y + sz/2 > height) {
      velo.y *= -.9;
      loc.y = height - sz/2;
    }

    if (loc.x + sz/2 > width) {
      velo.x = -abs(velo.x) * .9;
    }

    if (loc.x - sz/2 < 0) {
      velo.x = abs(velo.x) * .9;
    }
  }
}

