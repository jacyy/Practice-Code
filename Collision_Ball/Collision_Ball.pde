float sz;
PVector loc, velo, acc;
PVector mouse;
float sz2;
PVector loc2, velo2, acc2;

void setup() {
  size(1000, 700);
  sz = 250;
  loc = new PVector(width/2, height/2);
  velo = new PVector(7, 7);
  acc = new PVector(0, 0);
  mouse = new PVector();
  sz2 = 200;
  loc2 = new PVector(width/5, height/5);
  velo2 = new PVector(-5, -5);
  acc2 = new PVector(0, 0);
}

void draw() {
  background(50);

  velo.add(acc);
  loc.add(velo);

  velo2.add(acc2);
  loc2.add(velo2);

  if (loc.dist(loc2) < sz/2 + sz2/2) {

    if (loc.x < loc2.x) {
      velo.x = -abs(velo.x);
      velo2.x = abs(velo2.x);
    } else {
      velo.x = abs(velo.x);
      velo2.x = -abs(velo2.x);
    }

    if (loc.y < loc2.y + sz2/2) {
      velo.y = -abs(velo.y);
      velo2.y = abs(velo2.y);
    } else {
      velo.y = abs(velo.y);
      velo2.y = -abs(velo2.y);
    }
  }

  fill(201, 243, 255);
  ellipse(loc.x, loc.y, sz, sz);

  fill(255, 191, 191);
  ellipse(loc2.x, loc2.y, sz2, sz2);

  if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    velo.x *= -1;
  }

  if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    velo.y *= -1;
  }

  if (loc2.x + sz2/2 > width || loc2.x - sz2/2 < 0) {
    velo2.x *= -1;
  }

  if (loc2.y + sz2/2 > height || loc2.y - sz2/2 < 0) {
    velo2.y *= -1;
  }
}

