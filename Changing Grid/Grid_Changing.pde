//int bar = 50;
//
//void setup() {
//  size(800, 800);
//}
//
//void draw() {
//  for (int i = 0; i < width; i = i + bar) {
//    if (mouseX > i && mouseX < i + bar) {
//      fill (random(255), random(255), random(255));
//    } else {
//      fill (0);
//    }
//
//    rect(i, 0, bar, height);
//
//    for (int r = 0; r < height; r = r + bar) {
//      if (mouseY > r && mouseY < r + bar) {
//        fill (random(255), random(255), random(255));
//      } else {
//        fill (0);
//      }
//
//      rect(0, r, width, bar);
//    }
//  }
//}

//int bar = 50;
//
//void setup() {
//  size(800, 800);
//  noCursor();
//}
//
//void draw() {
//  for (int i = 0; i < width; i = i + bar) {
//    for (int r = 0; r < height; r = r + bar) {
//      if (mouseX > i && mouseX < i + bar && mouseY > r && mouseY < r + bar) {
//        fill (random(255), random(255), random(255));
//      } else {
//        fill (0);
//      }
//
//      rect(i, r, width, height);
//
//      }
//    }
//  }

int d = 50;
int value = 0;

void setup() {
  size(800, 800);
  noCursor();
}

void draw() {
  for (int x = 0; x < width; x += d) {
    for (int y = 0; y < height; y += d) {
      if (mouseX < x+d && mouseX > x && mouseY < y+d && mouseY > y) {
        fill(219, 255, 241);
      } else {
        fill(255);
      }
      rect(x, y, d, d);
      stroke(166, 196, 185);
    }
  }
}


