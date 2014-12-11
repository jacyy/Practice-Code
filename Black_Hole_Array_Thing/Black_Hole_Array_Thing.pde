ArrayList<GravityBall> food = new ArrayList<GravityBall>();
GravityBall[] balls = new GravityBall[200];
BlackHole blackie;


void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  blackie = new BlackHole();
}

void draw() {
  background(0, 0, 100);
  blackie.display();
  
  if (mousePressed) {
    food.add(new GravityBall(mouseX, mouseY, random(5, 30)));
  }

  for (int i = 0; i < balls.length; i++) {
    GravityBall b = food.get(i);
    b.display();
    b.move();
//    b.eated(blackie);
    
    if (blackie.eated(b)) {
      food.remove(i);
      blackie.grow();
    }
  }
}
