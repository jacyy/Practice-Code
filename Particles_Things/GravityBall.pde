//declare GravityBall variables
class GravityBall {
  PVector loc, velo, acc;
  float sz, hue, sat, bright, alpha;

  //initialize GravityBall variables. When adding a GravityBall, you have to define the x location, y location, and the size
  GravityBall(float tempx, float tempy, float tempsz) {
    sz = tempsz;
    velo = new PVector(random(-5, 5), random(-5, 5));
    acc = new PVector(random(-.1, .1), random(-.1, .1));
    loc = new PVector(tempx, tempy);
    hue = random(360);
    sat = 40;
    bright = 100;
    alpha = 100;
  }

//what the GravityBall does (display, move, and bounce)

  //displays the ball(s) and sets the color to pastel-ish colors
  void display() {
    fill(hue, sat, bright, alpha);
    ellipse(loc.x, loc.y, sz, sz);
    alpha--;
  }

  //moves the ball(s)
  void move() {
    acc.set(random(-5, 5), random(-5, 5));
    velo.add(acc);
    velo.limit(10);
    loc.add(velo);
  }


  //makes the ball(s) bounce off the walls
  void bounce() {
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      velo.y *= -abs(.9);
    }

    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      velo.x *= -abs(.9);
    }
  }
}

