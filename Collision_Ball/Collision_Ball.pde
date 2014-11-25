int count = 70;

float[] sz = new float[count];
PVector[] loc = new PVector[count];
PVector[] velo = new PVector[count];
PVector[] acc = new PVector[count];
float[] mass = new float[count];
int minDia = 10;
int maxDia = 60;

void setup() {
  size(1000, 700);
  colorMode(HSB, 360, 100, 100, 100);

  for (int i = 0; i < count; i++) {
    sz[i] = random(10, 100);
    loc[i] = new PVector(random(sz[i], width-sz[i]), random(sz[i], height-sz[1]));
    velo[i] = new PVector(3, 3);
    acc[i] = new PVector(0, 0);
    mass[i] = map(sz[i], minDia, maxDia, .3, 1.5);
  }
}

void draw() {
  background(50);

  for (int i = 0; i < count; i++) {
    velo[i].add(acc[i]);
    loc[i].add(velo[i]);


    for (int j = 0; j < count; j++) {
      if (i!=j) {
        if (loc[i].dist(loc[j]) < sz[i]/2 + sz[j]/2) {

          //          if (loc[i].x < loc[j].x) {
          //            velo[i].x = -abs(velo[i].x);
          //            velo[j].x = abs(velo[j].x);
          //          } else {
          //            velo[i].x = abs(velo[i].x);
          //            velo[j].x = -abs(velo[j].x);
          //          }
          //
          //          if (loc[i].y < loc[j].y + sz[j]/2) {
          //            velo[i].y = -abs(velo[i].y);
          //            velo[j].y = abs(velo[j].y);
          //          } else {
          //            velo[i].y = abs(velo[i].y);
          //            velo[j].y = -abs(velo[j].y);
          //          }
          
          velo[i] = PVector.sub(loc[i], loc[j]);
          velo[i].normalize();
          velo[i].div(mass[i]);
        }
      }
    }

    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);
    fill(frameCount%360, 25, 99);
    noStroke();


    if (loc[i].x + sz[i]/2 > width || loc[i].x - sz[i]/2 < 0) {
      velo[i].x *= -1;
    }

    if (loc[i].y + sz[i]/2 > height || loc[i].y - sz[i]/2 < 0) {
      velo[i].y *= -1;
    }
  }
}

