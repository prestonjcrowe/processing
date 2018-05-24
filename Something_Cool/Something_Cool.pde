ArrayList<Ring> activeRings;

void setup() {
  colorMode(HSB, 500);
  activeRings = new ArrayList<Ring>();
  size(500, 500);
}

void draw() {
  noCursor();
  if (mouseX != 0 && mouseY != 0) {
    newRing(mouseX, mouseY);
  }
  background(0, 0, 127);
  
  for (int i = 0; i < activeRings.size(); i++) {
    Ring r = activeRings.get(i);
    r.display();
  }
  for (int i = activeRings.size()-1; i >= 0; i--) {
    Ring r = activeRings.get(i);
    if (r.d > width/5) {
      activeRings.remove(r);
    }
  }
}



void newRing(int x, int y) {
  Ring r = new Ring(x, y);
  activeRings.add(r);
}

void mousePressed() {
  newRing(mouseX, mouseY);
}

