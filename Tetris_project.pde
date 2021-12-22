Grid grid;

void setup()
{
  strokeWeight(3);
  size(720, 720);
  grid = new Grid();
}

void draw()
{
  background(0);
  grid.display();
}
