int count = 50;
float []x = new float[count];
float []y = new float[count];

void setup () {
  size(displayWidth, displayHeight);
  noStroke();
  noCursor();
  colorMode(HSB, 360, 100, 100);
  for (int i = 0; i < count; i++) {
    x[i] = random(width);
    y[i] = random(height);
  }
}

void draw() {
  background(20);

  if (pmouseX !=mouseX || pmouseY !=mouseY) {
    for (int i = 0; i < count-1; i++) {
      x[i] = x[i+1];
      y[i] = y[i+1];
    }

    x[count-1] = mouseX;
    y[count-1] = mouseY;
  }  

  for (int i = 0; i < count; i++) {
    fill(random(360), 20, 99, 150);
    ellipse(x[i], y[i], i*2, i*2);
  }
}

