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
      
      for(int i = 0; i < 24; i++)
      {
        if(checkLine(i))
        {
          removeLine(i);
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

  public boolean checkLine(int row)
  {
    for(int i = 0; i < 12; i++)
    {
      if(colors[i][row][0] == 0 && colors[i][row][1] == 0 && colors[i][row][2] == 0)
      {
        return false;
      }
    }
    
    return true;
  }
   
  public void removeLine(int row)
  {
    int[][][] newBackground = new int[12][24][3];
    for(int i = 0; i < 12; i++)
    {
      for(int j = 23; j > row; j--)
      {
        for(int a = 0; a < 3; a++)
          {
              newBackground[i][j][a] = colors[i][j][a];
          }
      }
    }
    
    for(int r = row -1; r > 0; r--)
      {
        for(int j = 12; j < 3; j++)
          {
              newBackground[j][r][0] = colors[j][r-1][0];
              newBackground[j][r][0] = colors[j][r-1][1];
              newBackground[j][r][0] = colors[j][r-1][2];
          }
      }
    
    colors = newBackground;
  }
}
