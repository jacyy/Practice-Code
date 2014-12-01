Ball b; //declare a new object of the Ball class

void setup() {
  size(800, 600);
  b = new Ball(); //initialize our new ball called b
}

void draw() {
  background(10);
  colorMode(HSB, 360, 100, 100, 100);
  b.move();
  b.bounce();
  b.display();
  b.colorchanging();
}

class Ball {
  // properties of Ball class
  float sz;
  PVector loc, velo;

  Ball() {
    sz = 50;
    loc = new PVector(width/2, height/2);
    velo = PVector.random2D();
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move () {
    loc.add(velo);
  }

  void bounce() {
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      velo.x *= -1;
    }

    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      velo.y *= -1;
    }
  }
  
  void colorchanging() {
    fill(frameCount%360, 25, 100);
  }
}

