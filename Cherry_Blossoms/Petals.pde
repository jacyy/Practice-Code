//declaring petalPic
PImage petalPic;

//declare Petals variables (location, velocity, acceleration, and size)
class Petals {
  PVector loc, velo, acc;
  float sz;

  //initialize Petals variables and picture
  Petals() {
    sz = random(5, 20);
    velo = new PVector(random(-5, 5), random(5));
    acc = new PVector(0, random(0, .01));
    loc = new PVector(random(width), random(height));
    petalPic = loadImage("petals.png");
  }

  //what the Petals do (display and move)

  //displays the Petals as the image
  void display() {
    image(petalPic, loc.x, loc.y, sz, sz);
  }

  //moves the Petals
  void move() {
    acc.set(0, random(0, .01));
    velo.add(acc);
    velo.limit(1);
    loc.add(velo);
  }

  //when the Petals exit the screen, it disappears
  boolean isDead() {
    if (loc.y > height) {
      return true;
    } else {
      return false;
    }
  }
}
