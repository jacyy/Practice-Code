String[]PHYSICU = {
  "OGSTKSLDJFLKAJSD", "PHYSICS", "WHY", "YOU", "MURDER", "MY", "SOUL", "AND", "LAIFU", "?!?!??!?!?!"
};

void setup() {
  size(700, 700);
  background(0);
}

void draw() {
  for (int f = 0; f < PHYSICU.length; f++) {
    fill(random(255), 0, 0);
    textSize(30);
    text(PHYSICU[f], 30, f*50+50);
  }
}

