//declaring flowerPic
PImage flowerPic;

//declare Flowers variables (location, velocity, acceleration, and size)
class Flowers {
  PVector loc, velo, acc;
  float sz;

  //initialize Flowers variables and picture
  //when adding Flowers, you have to define the x and y location
  Flowers(float tempx, float tempy) {
    sz = random(15, 55);
    velo = new PVector(random(-5, 5), random(5));
    acc = new PVector(0, random(0, .01));
    loc = new PVector(tempx, tempy);
    flowerPic = loadImage("flower.png");
  }

//what the Flower does (display and move)

  //displays the flower(s) as the image
  void display() {
    image(flowerPic, loc.x, loc.y, sz, sz);
  }

  //moves the Flowers
  void move() {
    acc.set(0, random(0, .01));
    velo.add(acc);
    velo.limit(1);
    loc.add(velo);
  }
  
  //when the Flowers exit the screen, it disappears
  boolean isDead(){
   if (loc.y > height) {
     return true;
   } else {
     return false;
   }
  }
}

