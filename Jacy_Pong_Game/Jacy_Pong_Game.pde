int x;
int y;
float speedx = 10;
float speedy = -10;
int sz = 30;
int pw = 20;
int ph = 100;
float rpx;
float rpy;
float lpx = 30;
float lpy = ph/2;
int lps = 15;
int sr = 0;
int srx;
int sry = 80;
int sl = 0;
int slx;
int sly = 80;
int run = 1; 

void setup() {
  size(displayWidth, displayHeight);  
  x = width/2;
  y = height/2;
  noCursor();
}

void draw() {
  background(52);
  fill(216, 255, 250);

  if (run == 1) {
    rpx = width-50;
    rpy = mouseY-ph/2;
    srx = width/2 - 150;
    slx = width/2 + 150;

    //MAKING THE BALL MOVE
    ellipse(x, y, sz, sz);
    x += speedx;
    y += speedy;

    if (x > width-sz/2) {
      speedx = -10;
      sr++;
      x = width/2;
      y = width/2;
      background(0);
    }

    if (y > height-sz/2) {
      speedy = -abs(speedy);
    }

    if (x < sz/2) {
      speedx = 10;
      sl++;
      x = width/2;
      y = width/2;
      background(0);
    }

    if (y < sz/2) {
      speedy = abs(speedy);
    }

    //PADDLE

    fill(255);
    rect(rpx, rpy, pw, ph);

    //BOUNCE OFF PADDLE

    if (x+sz/2 >= rpx && y >= rpy  && y <= rpy + ph) {
      speedx = -abs(speedx);
      speedy = random(-7, 13);
    }

    //PADDLE 2

    rect(lpx, lpy, pw, ph);

    //BOUNCE OFF PADDLE 2

    if (x-sz/2 <= lpx + pw && y >= lpy  && y <= lpy + ph) {
      speedx = abs(speedx);
      speedy = random(-7, 13);
    }

    //KEYBOARD (PADDLE 2)
    if (keyPressed) {
      if (key == 'w' || key == 'W' || keyCode == UP) {
        lpy-=lps;
      }
    }

    if (keyPressed) {
      if (key == 's' || key == 'S' || keyCode == DOWN) {
        lpy+=lps;
      }
    }

    //SCORE
    textSize(30);
    text("score", width/2-30, 40);
    text(sr, srx, sry);
    text(sl, slx, sly);

    //SCORE CONT.

    if (sr == 10 || sl == 10) {
      run = 0;
    }
  }

  if (run == 0) {
    text("GAME OVER!", width/2 - 60, height/2 + 150);
    textSize(20);
    sr = 0;
    sl = 0;
    text("(right click for rematch)", width/2 - 110, height/2 + 200);
    ellipse(x, y, sz, sz);
  }
}

void mousePressed() {
  run = 1;
}

