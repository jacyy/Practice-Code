void setup() {
  size(800, 800);
  noCursor();
}

void draw() {
  background(209, 243, 255);
  house();
  door();
  bear();
  grass();
}

void bear() {
  //move the cursor to move Mr. Bear :)

  int headx = 50;
  int heady = 110;

  headx = mouseX;
  heady = 500;

  //ears
  fill(209, 172, 141);
  ellipseMode(RADIUS);
  ellipse(headx - 27.5, heady - 22, 17, 15);

  ellipseMode(RADIUS);
  ellipse(headx + 25, heady - 23, 17, 15);

  //arms
  stroke(0);
  strokeWeight(17);
  line(headx - 10, heady + 25, headx - 40, heady + 80);

  line(headx + 10, heady + 25, headx + 40, heady + 80);

  stroke(209, 172, 141);
  strokeWeight(15);
  line(headx - 10, heady + 25, headx - 40, heady + 80);

  line(headx + 10, heady + 25, headx + 40, heady + 80);

  strokeWeight(1);
  stroke(0);

  // body
  fill(209, 172, 141);
  rect(headx - 25, heady + 20, 50, 100, 140);

  // head
  ellipseMode(RADIUS);
  ellipse(headx, heady, 40, 35);

  // eyes
  ellipseMode(RADIUS);
  ellipse(headx - 20, heady + 5, 3, 3);

  ellipseMode(RADIUS);
  ellipse(headx + 20, heady + 5, 3, 3);

  // mouth
  line(headx - 3, heady + 18, headx + 3, heady + 22);
  line(headx + 3, heady + 18, headx - 3, heady + 22);
}

void grass() {
  fill(212, 252, 215);
  rect(-1, 600, width+1, height);
}

void house() {
  fill(249, 255, 201);
  rect(500, 200, width+1, 400);
  triangle(width+1, 200, 450, 200, 800, -200);
}

void door() {
  fill(242, 188, 78);
  rect(700, 400, 600, 600);
  textSize(30);
  fill(77, 52, 0);
  text("DOOR", 710, 450);
}

void mouseClicked() {
  background(0);
}
