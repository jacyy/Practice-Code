PImage petalPic;

//declare GravityBall variables
class Petals {
  PVector loc, velo, acc;
  float sz;

  //initialize GravityBall variables. When adding a GravityBall, you have to define the x location, y location, and the size
  Petals(float tempsz) {
    sz = tempsz;
    velo = new PVector(random(-5, 5), random(5));
    acc = new PVector(0, random(0, .01));
    loc = new PVector(random(width), random(height));
    petalPic = loadImage("petals.png");
  }

//what the GravityBall does (display, move, and bounce)

  //displays the ball(s) and sets the color to pastel-ish colors
  void display() {
    image(petalPic, loc.x, loc.y, 16, 16);
  }

  //moves the ball(s)
  void move() {
    acc.set(0, random(0, .01));
    velo.add(acc);
    velo.limit(1);
    loc.add(velo);
  }
  
  boolean isDead(){
   if (loc.y > height) {
     return true;
   } else {
     return false;
   }
  }
}

