class Paddle {
  
  private float x, y, pLength, pHeight, speed;
  
  Paddle(float x, float y, float pLength, float pHeight, float speed) {
    this.x = x;
    this.y = y;
    this.pLength = pLength;
    this.pHeight = pHeight;
    this.speed = speed;
  }
  
  public void display() {
    fill(255);
    rect(x, y, pLength, pHeight);
  }
  
  // Scoots the paddle to left
  public void moveLeft() {
    // If the paddle is not touching the left side
    // of the screen...
    if (x - pLength/2 > 0) {
      x -= speed;
    } else {
      // Otherwise, scootch the paddle back on screen
      x = pLength/2;  
    }
  }
  
  // Scoots the paddle to right
  public void moveRight() {
    if (x + pLength/2  < width) {
      x += speed;
    } else {
      x = width - pLength/2;  
    }
  }
  
  public float getX() {
    return x;
  }
  
  public float getY() {
    return y;
  }
  
  public float getLength() {
    return pLength;
  }
  
  public float getHeight() {
    return pHeight;
  }
  

}
