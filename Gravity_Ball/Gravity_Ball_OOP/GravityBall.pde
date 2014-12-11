// declare GravityBall variables
class GravityBall {
  PVector loc, velo, acc;
  float sz, hue, sat, bright, alpha;

  // initialize GravityBall variables
  GravityBall(float tempsz) {
    sz = tempsz;
    velo = new PVector(random(10), .1);
    acc = new PVector(0, 0);
    loc = new PVector(random(sz, width - sz/2), random(sz, height - sz/2));
    hue = random(360);
    sat = 40;
    bright = 100;
    alpha = 50;
  }

  // what the GravityBall does

  void display() {
    fill(hue, sat, bright, alpha);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    velo.add(acc);
    loc.add(velo);
  }

  void bounce() {
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      velo.y *= -abs(.9);
    }

    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      velo.x *= -abs(.9);
    }
  }

  void collide(GravityBall other) {
    if (loc.dist(other.loc) < sz/2 + other.sz/2) {
      velo = PVector.sub(loc, other.loc);
      velo.normalize();
    }
  }
}
