Paddle paddle;
Ball ball;

boolean left_held = false;
boolean right_held = false;
int borderOpacity = 0;

void setup() {
  size(500, 500);
  paddle = new Paddle(width/2, height * 0.75, 100, 10, 15);
  ball = new Ball(width/2, height/2, 10, random(2, 3), random(2, 3));
}

void draw() { 
  // Draws a background every frame, erasing everything that
  // was drawn in the last "draw" cycle - the color is black,
  // but any RGB color works
  background(0, 0, 0);
  
  // Positions shapes by their center. not upper left corner
  rectMode(CENTER);
  
  // Display paddle and ball
  paddle.display();
  ball.display();
  
  // Move ball, and check for collisions with wall / paddle
  ball.move();
  if (ball.checkCollision(paddle)) {
    // If we hit the paddle, crank up the opacity to let the
    // border flash
    borderOpacity = 255; 
  }
  
  drawBorder();
  
  
  // We use booleans to keep track of when the arrow keys are
  // pressed
  if (left_held) {
    paddle.moveLeft();
  } else if (right_held) {
    paddle.moveRight();
  }
}

void drawBorder() {
  stroke(214, 96, 97, borderOpacity);
  strokeWeight(4);
  noFill();
  rect(width/2, height/2, width, height);
  strokeWeight(1);
  stroke(1);
  borderOpacity -= 0.25;
}

// Set left & right held to true on arrow key press
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      left_held = true;
    }
    else if (keyCode == RIGHT) {
      right_held = true;
    }
  }
}

// Set left & right held to false on arrow key release
void keyReleased() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      left_held = false;
    }
    else if (keyCode == RIGHT) {
      right_held = false;
    }
  }
}
