void setup() {
  size(700, 700);
  background(176, 255, 173);
  stroke(200, 255, 196);
  strokeWeight(5);
}

void draw() {
  for (int x = 0; x < height+50; x += 50) {
    fill(255, 196, 221);
    rect(x-50, 0, x, width);
  }
}

