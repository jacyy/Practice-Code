GravityBall[] balls = new GravityBall[800];

void setup() {
  size(displayWidth, displayHeight);
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new GravityBall(random(6, 30));
  }
  noCursor();
  stroke(200, 150);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(0, 0, 100);
  for (int i = 0; i < balls.length; i ++) {
    balls[i].display();
    balls[i].move();
    balls[i].bounce();

    for (int j = 0; j < balls.length; j++) {
      if (i!=j) {
        balls[i].collide(balls[j]);
      }
    }
  }
}
