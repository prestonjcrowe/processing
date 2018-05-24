class Ring {

  int x;
  int y;
  int d = 0;
  int o = 255;

  Ring(int t_x, int t_y) {
    x = t_x;
    y = t_y;
  }

  void display() {
    d++;
    o = o - 3;;
    noFill();
    strokeWeight(3);
    stroke(y, height, height, o); //o
    ellipse(x, y, d, d);
  }
}

