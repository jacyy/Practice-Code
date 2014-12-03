GravityBall balala;

void setup() {
  size(displayWidth, displayHeight);
  balala = new GravityBall();
}

void draw() {
  background(0);
  balala.display();
  balala.move();
  balala.bounce();
}

// declare GravityBall variables
class GravityBall {
  float locx, locy, gravity, velox, veloy, accx;
  float sz;


  // initialize GravityBall variables
  GravityBall() {
    velox = 5;
    veloy = 0;
    accx = 0;
    locx = width/2;
    locy = 0;
    gravity = 1;
    sz = 40;
  }

  // what the GravityBall does

  void display() {
    ellipse(locx, locy, sz, sz);
  }

  void move() {
    velox += accx;
    veloy += gravity;

    locx += velox;
    locy += veloy;
  }

  void bounce() {
    if (locy + sz/2 > height) {
      veloy *= -.9;
      locy = height - sz/2;
    }

    if (locx + sz/2 > width) {
      velox = -abs(velox) * .9;
    }

    if (locx - sz/2 < 0) {
      velox = abs(velox) * .9;
    }
  }
}

