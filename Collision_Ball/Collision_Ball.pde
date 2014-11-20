float sz;
PVector loc, velo, acc;
PVector mouse;

void setup() {
  size(displayWidth, displayHeight);
  sz = 150;
  loc = new PVector(width/2, height/2);
  velo = new PVector(5, 5);
  acc = new PVector(0, 0);
  mouse = new PVector();
}

void draw() {
  background(50);

  mouse.set(mouseX, mouseY);

  velo.add(acc);
  loc.add(velo);

  if (loc.dist(mouse) < sz/2) {

    if (loc.x < mouse.x) {
      velo.x = -abs(velo.x);
    } else {
      velo.x = abs(velo.x);
    }

    if (loc.y < mouse.y) {
      velo.y = -abs(velo.y);
    } else {
      velo.y = abs(velo.y);
    }
  }

  fill(201, 243, 255);
  ellipse(loc.x, loc.y, sz, sz);

  if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    velo.x *= -1;
  }

  if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    velo.y *= -1;
  }
}

