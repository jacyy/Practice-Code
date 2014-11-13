int x = 0;
int y = 0;
int z = 0;

void setup() {
  size (displayWidth, displayHeight);
  noCursor();
  background(0);
}

void draw() {
  noStroke();
  while (x < 10) {
    ellipse(y, z, 50, 50);
    fill(random(246, 255), random(174, 255), random(253, 255));
    x++;
    y += displayWidth/9;
    z += 100;
  }
}

