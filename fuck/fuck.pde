int k = 0;
void setup() {
  size(500, 500);
  frameRate(60);
}
void draw() {
  //background(10);
  k++;
  textSize(k);
  fill(k, 0, 0, 127);
  text("friend!!!!!!!!!!!!!!", 0, height-k);
  if (k > width) {
     k = 0; 
  }
}

