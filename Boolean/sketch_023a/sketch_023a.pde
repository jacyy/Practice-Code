boolean shape = true;

void setup() {
  size(displayWidth, displayHeight);
  frameRate(10);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  background(0);
  noCursor();
}

void draw() {
  fill(random(360), 18, 99, 100);
  if (shape) {
    ellipse(random(width), random(height), random(40, 80), random(40, 80));
  } else {
    rect(random(width), random(height), random(80, 120), random(80, 120));
  }
}

void mouseClicked() {
  shape = !shape;
}

