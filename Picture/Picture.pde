PImage img;

void setup() {
  size(1024, 795);
  noCursor();
  img = loadImage("http://fc01.deviantart.net/fs71/i/2013/194/c/a/pusheen_by_lovely9727855-d6dbkgo.png");
}

void draw() {
  image(img, 0, 0); 
}
