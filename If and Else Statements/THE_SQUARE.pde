//making it fill in*//
//void setup() {
//  size(800, 800);
//  background(185, 255, 237);
//}
//
//void draw () {
//  rect(350, 350, 100, 100);
//
//  if (mouseX > 350 && mouseX < 450 && mouseY > 350 && mouseY < 450) {
//    fill(252, 171, 197);
//    stroke(211, 111, 143);
//  } else {
//    fill(185, 255, 237);
//    stroke(138, 224, 202);
//  }
//}

//*making it disappear*//
//void setup() {
//  size(800, 800);
//  background(255, 217, 170);
//  stroke(115, 39, 3);
//}
//
//void draw() {
//  if (mouseX > 350 && mouseX < 450 && mouseY > 350 && mouseY < 450) {
//    rect(350, 350, 100, 100);
//    fill(234, 142, 112);
//  } else {
//    background(255, 217, 170);
//  }
//}

//*making it jiggle*//
//void setup() {
//  size(800, 800);
//  background(215, 255, 209);
//  frameRate(35);
//  stroke(100, 180, 105);
//}
//
//void draw() {
//  if (mouseX > 350 && mouseX < 450 && mouseY > 350 && mouseY < 450) {
//    background(215, 255, 209);
//    rect(random(330, 370), random(330, 370), random(80, 120), random(80, 120));
//    fill(102, 219, 108);
//  } else {
//    fill(102, 219, 108);
//  }
//}

//int x = 350;
//int y = 350;
//int sz = 100;
//
//void setup() {
//  size(800, 800);
//  frameRate(15);
//}
//
//void draw() {
//    background(255, 180, 180);
//  if (mouseX < x + sz && mouseX > x && mouseY < y + sz && mouseY > y){
//      rect(random(width), random(height), sz, sz);
//      fill(180, 255, 244);
//      stroke(121, 214, 199);
//  } else {
//      rect(x, y, sz, sz);
//      fill(244, 255, 180);
//      stroke(176, 193, 70);
//  }
//}


int x = 350;
int y = 350;
int sz = 100; 

void setup() {
  size(800, 800);
}

void draw() {
  rect(x, y, sz, sz);
  fill(244, 255, 180);
  stroke(176, 193, 70);

}

void mouseClicked() {
  if (mouseX < x + sz && mouseX > x && mouseY < y + sz && mouseY > y) {
    rect(random(width), random(height), sz, sz);
    fill(180, 255, 244);
    stroke(121, 214, 199);
  } else {
    rect(x, y, sz, sz);
    fill(244, 255, 180);
    stroke(176, 193, 70);
  }
}

