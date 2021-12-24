public class Background
{
  private int[][][] colors;
  private int r, g, b;
  private int w;
  private int x, y;

  public Background()
  {
    colors = new int[12][24][3];
    w = width / 24;
  }

  public void display()
  {
      for(int i = 0; i < 12; i++)
      {
        for(int j = 0; j < 24; j++)
        {
          r = colors[i][j][0];
          g = colors[i][j][1];
          b = colors[i][j][2];
          
          fill(r, g, b);
          rect(i*w, j*w, w, w);
        }
      }
  }

  public void spawnTetromino(Tetromino t)
  {
     for(int i = 0; i < 4; i++)
     {
       x = t.theTetromino[i][0];
       y = t.theTetromino[i][1];
       
       colors[x][y][0] = t.r;
       colors[x][y][1] = t.g;
       colors[x][y][2] = t.b;
     }
  }


   
}
