//declare variables
ArrayList<GravityBall> balls = new ArrayList<GravityBall>();
int max = 100;


//setting size, no cursor, no stroke around the ball(s), and HSB color mode
void setup() {
  size(displayWidth, displayHeight);
  noCursor();
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
}


void draw() {
  
  //setting background to white
  background(0, 0, 100);
  
  //adding the balls and displaying them, moving them, and making them bounce
  balls.add(new GravityBall(mouseX, mouseY, random(15, 70)));
  for (int i = 0; i < balls.size(); i ++) {
    GravityBall b = balls.get(i);
    b.display();
    b.move();
    b.bounce(); 
  }
  
  //setting the limit of the number of balls. The max number of balls doesn't apply when you drag the mouse.
  if (balls.size() > max) {
    balls.remove(10);
  }
  
}


//dragging the mouse across the screen will add more balls
void mouseDragged() {
  balls.add(new GravityBall(mouseX, mouseY, random(15, 70)));
}

