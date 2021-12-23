Grid grid;
Tetromino tetromino, onDeck;
Background bg;

void setup()
{
  strokeWeight(3);
  size(720, 720);
  grid = new Grid();
  
  tetromino = new Tetromino();
  tetromino.isActive = true;
  onDeck = new Tetromino();
  
  bg = new Background();
  
  textSize(44);
}

void draw()
{
  bg.display();
  grid.display();
  spawnTetrominoes();
}

void spawnTetrominoes()
{
  tetromino.display();
  onDeck.showOnDeck();
  
  if(tetromino.checkBackground(bg))
  {
    tetromino.moveDown(1);
  }
  else
  {
    tetromino.isActive = false;
  }
  
  if(!tetromino.isActive)
  {
    bg.spawnTetromino(tetromino);
    tetromino = onDeck;
      
    tetromino.isActive = true;
    onDeck = new Tetromino();
  }
  
}

void keyPressed()
{
  if(keyCode == RIGHT)
  {
    tetromino.moveTetromino("R");
  }
  else if(keyCode == LEFT)
  {
    tetromino.moveTetromino("L");
  }
  else if(keyCode == DOWN)
  {
    tetromino.moveTetromino("D");
  }
}

void keyReleased()
{
  if(keyCode == UP)
  {
    tetromino.rotate();
    tetromino.rotate();
  }
  
  tetromino.rotCount++;
}
