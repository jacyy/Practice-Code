float locx, locy, gravity, velox, veloy, accx;
float sz = 40;

void setup() {
  size(700, 700);
  velox = 0;
  veloy = 0;
  accx = 0;
  locx = width/2;
  locy = 0;
  gravity = 1;
}

void draw() {
  background(0);

  velox += accx;
  veloy += gravity;

  locx += velox;
  locy += veloy;

  ellipse(locx, locy, sz, sz);
  
  if (locy + sz/2 > height) {
    veloy *= -1;
    locy = height - sz/2;
  }
  
  if (
  
}

