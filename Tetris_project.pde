Grid grid;
Tetromino tetromino;
void setup()
{
  strokeWeight(3);
  size(720, 720);
  grid = new Grid();
  tetromino = new Tetromino();
}

void draw()
{
  background(0);
  grid.display();
  tetromino.display();
}
