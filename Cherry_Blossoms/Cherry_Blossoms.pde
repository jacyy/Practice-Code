//add Petals and Flowers particle systems
ArrayList<Petals> petal = new ArrayList<Petals>();
ArrayList<Flowers> flower = new ArrayList<Flowers>();

//declare background (bg)
PImage bg;


//setting size, no cursor, HSB mode, and initialize the bg
void setup() {
  size(1500, 1054);
  noCursor();
  colorMode(HSB, 360, 100, 100, 100);
  bg = loadImage("Cherry Blossoms.jpg");
}


void draw() {
  //set the background to the picture
  background(bg);

  //petals will be added if there're less than 150 petals
  if (petal.size() < 150) {
    petal.add(new Petals());
  }
  
  //making the petals display and move
  for (int i = 0; i < petal.size (); i++) {
    Petals p = petal.get(i);
    p.display();
    p.move();
    
    //making the petals disappear when it leaves the screen
    if (p.isDead()) {
      petal.remove(i);
    }
  }

  //slowing the number of times the flowers are added
  //follows mouseX and mouseY
  if (frameCount%30 == 0) {
    flower.add(new Flowers(mouseX, mouseY));
  }

  //making the flowers display and move
  for (int i = 0; i < flower.size (); i++) {
    Flowers f = flower.get(i);
    f.display();
    f.move();
    
    //making the flowers disappear when it leaves the screen
    if (f.isDead()) {
      flower.remove(i);
    }
  }
}

