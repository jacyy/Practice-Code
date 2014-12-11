class BlackHole {
  PVector loc;
  float sz;
  
  BlackHole() {
    loc = new PVector(random(width), random(height));
    sz = 15;
  }
  
  void display() {
    fill(0);
    ellipse(loc.x, loc.y, sz, sz);
  }
  
  boolean eated(GravityBall food) {
    if (loc.dist(food.loc) < sz/2 + food.sz/2) {
      return true;
    }
    else {
      return false;
    }
  }
  
  void grow() {
    sz += .1;
  }
}
