//float x = 300;
//float y = 300;
//float hue = 0;
//
//void setup() {
//  size(700, 700);
//  colorMode(HSB, 360, 100, 100, 100);
//  noStroke();
//}
//
//void draw() {
//  background(20);
//  fill(hue%360, 30, 100);
//  hue++;
//  rect (x, y, 100, 100);
//  if (mouseX < x+100 && mouseY < y+100 && mouseX > x && mouseY > y) {
//    x = random(width);
//    y = random(height);
//  }
//}

//float hue = 0;
//
//void setup() {
//  size(700, 700);
//  colorMode(HSB, 360, 100, 100, 100);
//  background(0);
//}
//
//void draw() {
//  stroke(hue%360, 30, 100);
//  hue++;
//  line(pmouseX, pmouseY, mouseX, mouseY);
//}


float hue = 0;

void setup() {
  size(700, 700);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(hue%360, 30, 100);
  hue++;
}

