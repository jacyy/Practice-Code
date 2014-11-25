int count = 800;
PImage snowflake;
PVector[] loc = new PVector[count];
PVector[] vel = new PVector[count];
PVector[] acc = new PVector[count];
float[] sz = new float[count];

void setup() {
  noCursor();
  size(displayWidth, displayHeight);
  snowflake = loadImage("http://www.iconsdb.com/icons/preview/gray/snowflake-41-xxl.png");

  for (int i = 0; i < count; i++) {
    sz[i] = random(5, 15);
    loc[i] = new PVector(random(width), random(-height*1.5, -sz[i]/2));
    vel[i] = new PVector(0, random(1));
    acc[i] = new PVector(0, .01);
  }
  noStroke();
  fill(255, 200);
}

void draw() {
  background(0, 3, 15);
  for (int i = 0; i < count; i++) {

    vel[i].add(acc[i]);
    loc[i].add(vel[i]);
    vel[i].limit(3);

    image(snowflake,loc[i].x, loc[i].y, sz[i], sz[i]);

    acc[i].x = random(-.1, .1);

    if (loc[i].y - sz[i]/2 > height) {
      loc[i].set(random(width), random(-height, -sz[i]/2));
      vel[i].set(0, 1);
    }
  }
}
