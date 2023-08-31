class Food {
  PVector position;
  
  Food(int w) {
    respawn(); // Call respawn directly in the constructor
    WIDTH = w;
  }
  
  void respawn() {
    position = new PVector(floor(random(width/WIDTH)) * WIDTH, floor(random(height/WIDTH)) * WIDTH);
  }
  
  void draw() {
    fill(255, 0, 0);
    rect(position.x, position.y, WIDTH, WIDTH);
  }
}
