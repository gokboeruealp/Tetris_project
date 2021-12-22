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
}

void draw()
{
  bg.display();
  grid.display();
  tetromino.display();
  
  tetromino.moveDown(1);
  
  checkBottom();
}

void spawnTetromino()
{
  bg.spawnTetromino(tetromino);
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

void checkBottom()
{
  if(!tetromino.isActive)
  {
    spawnTetromino();
    tetromino = onDeck;
    
    tetromino.isActive = true;
    onDeck = new Tetromino();
  }
}
