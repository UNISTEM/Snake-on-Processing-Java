# Snake-on-Processing-Java

This is a simple Snake game implemented in the Processing programming environment. The game allows players to control a snake that grows in size as it consumes food. The objective is to grow the snake as much as possible without colliding with the walls or itself.

How to Play

Controls:
Use the arrow keys (↑, ↓, ←, →) to control the snake's direction.
The snake moves continuously in the chosen direction until a new direction is selected.
Objective:
Eat the red food pellets to grow the snake.
Avoid running into the walls or the snake's own body, as this will end the game.
Game Over and Restart:
The game ends when the snake collides with the walls or its own body.
To restart the game after a game over, click anywhere on the game window.
Setup

Install Processing:
Download and install the Processing IDE.
Clone the Repository:
Clone or download this repository to your local machine.
Open and Run:
Open the snake_game.pde file using the Processing IDE.
Click the "Run" button to start the game.
Code Structure

The code is structured as follows:

setup(): Initializes the game canvas, sets frame rate, and initializes the snake and food objects.
draw(): Handles drawing the grid, updating snake and food positions, checking for collisions, and handling game over scenarios.
keyPressed(): Detects user input to change the snake's direction.
mousePressed(): Restarts the game when clicked after a game over.
The game logic is defined in the Snake and Food classes:

Snake class: Manages the snake's segments, movement, growth, and collision detection.
Food class: Manages the position of the food and its respawn.
Customization

You can adjust the WIDTH constant to change the size of the grid and the elements within the game.
The frameRate() function in the setup() function controls the speed of the game.
Colors and appearance can be customized by modifying the fill() and rect() functions.
Feel free to experiment with the code to add new features, change game mechanics, or enhance the visuals!

