int WIDTH = 20; // Adjust the size of the grid
Snake snake;
Food food;
int framerate=7;

  void setup() {
    frameRate(framerate);
    size(500, 500);
    snake = new Snake(WIDTH);
    food = new Food(WIDTH);
   }
   
  void draw() {
    fill(255);
    for (int i = 0; i < width/WIDTH; i++) {
      for (int j = 0; j < height/WIDTH; j++) {
        rect(i * WIDTH, j * WIDTH, WIDTH, WIDTH);
      }
    }
    
    snake.update();
    snake.draw();
    
    if (snake.isDead) {
      textSize(32);
      fill(255, 0, 0);
      text("Game Over", width/2 - 50, height/2);
      textSize(16);
      text("Click to restart", width/2 - 50, height/2 + 30);
      textSize(16);
      text("Score: "+  snake.getLength(),width/2 - 50,height/2 + 60);
      noLoop();
    }
    
    if (snake.checkCollision(food)) {
      snake.grow();
      food.respawn();
      framerate++;
      frameRate(framerate);
    }
    food.draw();
  }
  
   boolean checkFruitSnakeOverlap(Snake snake, Food food) {
     //check if food is on snake 
     for (int i = 0; i < snake.getLength(); i++) {
       
     }
     return true;
   }

  void keyPressed() {
    if (keyCode == UP || key == 'w') {
      snake.setDirection(0, -1);
    } else if (keyCode == DOWN || key == 's') {
      snake.setDirection(0, 1);
    } else if (keyCode == LEFT|| key == 'a') {
      snake.setDirection(-1, 0);
    } else if (keyCode == RIGHT || key == 'd') {
      snake.setDirection(1, 0);
    }
  }
  
  void mousePressed() {
    if (snake.isDead) {
      snake = new Snake(WIDTH);
      food = new Food(WIDTH);
      framerate = 7;
      frameRate(framerate);
      loop();
    }
  }

  
