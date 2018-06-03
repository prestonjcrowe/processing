class Ball {
  
  private float x, y, xSpeed, ySpeed, size, radius;

  Ball(float x, float y, float size, float xSpeed, float ySpeed) {
    this.x = x;
    this.y = y;
    this.size = size;
    
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.radius = size / 2;
  }
  
  public void move() {
    x += xSpeed;
    y += ySpeed;
  }
  
  public void display() {
    // Set "fill" color to white
    // To change colors, call fill(R, G, B)
    // or fill(0..255) for black->white
    fill(255);
    
    // Draws an "oval" that is size pixels
    // wide and size pixels tall at (x, y)
    ellipse(x, y, size, size);
  }
  
  // Increase speed by a small random amount
  public void speedUp() {
     ySpeed += random(0.89); 
     xSpeed += random(0.90); 
  }
  
  // Bounces the ball and speeds it up by some random
  // amount on every collision. Returns true when the
  // ball hits a paddle, and false otherwise
  public boolean checkCollision(Paddle p) {
    
    // If the ball is overlapping with the paddle AND
    // it is moving downward (dont want to get stuck inside
    // the paddle)
    if (x + radius > (p.getX() - p.getLength()/2) &&
        x - radius < (p.getX() + p.getLength()/2) &&
        y + radius > (p.getY() - p.getHeight()/2) &&
        y - radius < (p.getY() + p.getHeight()/2) &&
        ySpeed > 0) {
          
          speedUp();
          ySpeed *= -1;
          return true;
          
    }
    
    // If off screen in the Y direction, turn around
    if (y + radius > height || y - radius < 0) {
      ySpeed *= -1;
      return false;
    }
    
    // If off screen in the X direction, turn around
    if (x + radius > width  || x - radius < 0) {
      xSpeed *= -1; 
      return false;
    }
    return false;
  }
}
