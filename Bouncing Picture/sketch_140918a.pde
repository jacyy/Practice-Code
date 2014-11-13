int x;
int y;
int speedx;
int speedy;
PImage img;

void setup() {
  size(displayWidth, displayHeight);
  x = 0;
  y = height;
  speedx = 5;
  speedy = -5;
  img = loadImage("http://cache.desktopnexus.com/thumbnails/646236-bigthumbnail.jpg");
}

void draw() {
  background(234, 219, 197);
  fill(41, 255, 178);
  noStroke();
  image(img, x, y);
  x = x + speedx;
  y = y + speedy;

  if (y < 0) {
    speedy = 5;
  }

  if (x > width) {
    speedx = -5;
  }
  
  if (y > height) {
    speedy = -5;
  }
  
  if (x < 0) {
    speedx = 5;
  }
}

