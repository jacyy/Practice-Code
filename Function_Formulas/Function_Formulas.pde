////  Pythagorean Theorem
//
//void setup() {
//  size(700, 700);
//  textSize(20);
//}
//
//void draw() {
//  background(0);
//  fill(255);
//  triangle(0, 0, mouseX, mouseY, 0, 200);
//  text("the value is..." + Pythagorean(mouseX, mouseY), mouseX, mouseY);
//}
//
//float Pythagorean(float a, float b) {
//  float c;
//  c = sqrt(sq(a) + sq(b));
//  return c;
//}



////  Quadratic Formula
////  x = -b + sqrt(sq(b)-4*a*c)/2*a;
////  x = -b - sqrt(sq(b)-4*a*c)/2*a;
//
//void setup() {
//  size(700, 700);
//}
//
//void draw() {
//  background(0);
//  fill(255);
//  showMeTheAnswer(3, 4, 5);
//}
//
//float Quad1(float a, float b, float c) {
//  float result;
//  result = -b + sqrt(sq(b)-4*a*c)/2*a;
//  return result;
//}
//
//float Quad2(float a, float b, float c) {
//  float result;
//  result = -b - sqrt(sq(b)-4*a*c)/2*a;
//  return result;
//}
//
//void showMeTheAnswer(float a, float b, float c) {
//    println("a is " + a + ", b is " + b + ",  is " + c + "and so your roots are " + Quad1(1, 7, 1) + "," + Quad2(1, 7, 1));
//}



////  Better and Shorter
void setup() {
  size(700, 700);
}

void draw() {
  background(0);
  fill(255);
  println(quadratic(1, 7, 1));
}

float[] quadratic(float a, float b, float c) {
  float[] results = new float[2];
  results[0] = -b + sqrt(sq(b)-4*a*c)/2*a;
  results[1] = -b - sqrt(sq(b)-4*a*c)/2*a;
  return results;
}

