ArrayList<GravityBall> balls = new ArrayList<GravityBall>();
int max = 20;

void setup() {
  size(displayWidth, displayHeight);
  noCursor();
  stroke(200, 150);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(0, 0, 100);
  balls.add(new GravityBall(random(5, 80)));
  for (int i = 0; i < balls.size (); i ++) {
    GravityBall b = balls.get(i);
    b.display();
    b.move();
    b.bounce();
  }
  
  if (balls.size() > max) {
    balls.remove(0);
  }
}

void mouseDragged() {
  balls.add(new GravityBall(random(5, 80)));
}

