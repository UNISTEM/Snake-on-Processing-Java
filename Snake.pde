class Snake {
  private ArrayList<PVector> segments;
  private PVector velocity;
  private boolean isDead = false; 
  
  Snake(int w) {
    segments = new ArrayList<PVector>();
    segments.add(new PVector(3 * w, 3 * w)); // Initial position
    velocity = new PVector(1, 0); // Initial velocity (moving right)
  }
  
  void draw() {
    fill(0, 255, 0);
    for (PVector segment : segments) {
      rect(segment.x, segment.y, WIDTH, WIDTH);
    }
  }
  
 void update() {
    PVector head = segments.get(0).copy();
    head.add(PVector.mult(velocity, WIDTH)); // Multiply by WIDTH

    // Wrap around if the new head is out of bounds
    if (head.x < 0) head.x = width - WIDTH;
    else if (head.y < 0) head.y = height - WIDTH;
    else if (head.x >= width) head.x = 0;
    else if (head.y >= height) head.y = 0;

    // Check if the new head collides with any segment
    for (int i = 0; i < segments.size(); i++) {
      PVector segment = segments.get(i);
      if (head.equals(segment)) {
        isDead = true;
        return;
      }
    }

    segments.add(0, head);
    segments.remove(segments.size() - 1);
  }
  
 void setDirection(int x, int y) {
  if (isDead) return; // If the snake is dead, don't change its direction
  velocity.set(x, y);
  }
  
  boolean checkCollision(Food food) {
    PVector head = segments.get(0);
      return head.equals(food.position);
   }
  
  void grow() {
    PVector tail = segments.get(segments.size() - 1).copy();
    segments.add(tail);
  }
  
  int getLength(){
    return segments.size();
  }
  
}
