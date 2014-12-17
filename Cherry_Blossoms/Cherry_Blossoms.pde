//declare variables
ArrayList<Petals> petal = new ArrayList<Petals>();
int max = 200;
PImage bg;


//setting size, no cursor, no stroke around the ball(s), and HSB color mode
void setup() {
  size(1500, 1054);
  noCursor();
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
  bg = loadImage("Cherry Blossoms.jpg");
}


void draw() {
  background(bg);

  //adding the balls and displaying them, moving them, and making them bounce
  petal.add(new Petals(16));
  for (int i = 0; i < petal.size (); i++) {
    Petals p = petal.get(i);
    p.display();
    p.move();
    if (p.isDead()) {
      petal.remove(i);
    }
  }
  
    if (petal.size() > max) {
    petal.remove(1);
  }
}

