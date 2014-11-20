float sz;
PVector loc;
PVector mouse;

void setup() {
  size(800, 600);
  sz = 50;
  loc = new PVector(width/2, height/2);
  mouse = new PVector();
}

void draw() {
  background(0);
  
  mouse.set(mouseX, mouseY);
  
  if (loc.dist(mouse) < sz/2) {
    loc.set(random(width), random(height));
  }

  ellipse(loc.x, loc.y, sz, sz);
}
