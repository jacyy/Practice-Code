int dist = 10;

void setup() {
  size(displayWidth, displayHeight);
  frameRate(2);
  noCursor();
}

void draw() {
  background(0);
  for (int y = 0; y < 25; y++) {
    fill(255, 255, 149);
    ellipse(random(width), random(height), 20, 20);
  }
}

