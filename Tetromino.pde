class Tetromino
{
  //Tetromino Shape Array
   private int[][] iTetromino = {{0,0}, {1,0}, {2,0}, {3,0}};
   private int[][] oTetromino = {{0,0}, {1,0}, {0,1}, {1,1}};
   private int[][] tTetromino = {{0,0}, {1,0}, {2,0}, {1,1}};
   private int[][] jTetromino = {{0,0}, {1,0}, {2,0}, {2,1}};
   private int[][] lTetromino = {{0,0}, {1,0}, {2,0}, {0,1}};
   private int[][] sTetromino = {{0,0}, {1,0}, {1,1}, {2,1}};
   private int[][] zTetromino = {{0,1}, {1,1}, {1,0}, {2,0}};
   
   //Other Veriables
   private int[][] theTetromino, _T;
   private int r,g,b, choice, rotCount;
   private boolean isActive;
   private float w;
   
   //Time counter
   private int counter;
   
   //Spawn Tetromino(random t & color)
   public Tetromino()
   {
     w=width / 24;
     
     choice = (int)random(7);
     switch(choice)
     {
       case 0:
         theTetromino = iTetromino;
         r=(int)random(33, 222);
         g=(int)random(33, 222);
         b=(int)random(33, 222);
           break;
       case 1:
         theTetromino = oTetromino;
         r=(int)random(33, 222);
         g=(int)random(33, 222);
         b=(int)random(33, 222);
           break;
       case 2:
         theTetromino = tTetromino;
         r=(int)random(33, 222);
         g=(int)random(33, 222);
         b=(int)random(33, 222);
           break;
       case 3:
         theTetromino = jTetromino;
         r=(int)random(33, 222);
         g=(int)random(33, 222);
         b=(int)random(33, 222);
           break;
       case 4:
         theTetromino = lTetromino;
         r=(int)random(33, 222);
         g=(int)random(33, 222);
         b=(int)random(33, 222);
           break;
       case 5:
         theTetromino = sTetromino;
         r=(int)random(33, 222);
         g=(int)random(33, 222);
         b=(int)random(33, 222);
           break;
       case 6:
         theTetromino = zTetromino;
         r=(int)random(33, 222);
         g=(int)random(33, 222);
         b=(int)random(33, 222);
           break;
     }
     
     counter = 1;
     _T = theTetromino;
     rotCount = 0;
   }
   public void display()
   {
     fill(r, g, b);
     for(int i = 0; i < 4; i++)
     {
       rect(theTetromino[i][0]*w, theTetromino[i][1]*w, w, w);
     }
   }
   
   //movement the tetromino
   public void moveDown(int level)
   {
     if(counter%50 == 0)
       moveTetromino("D");
       
     counter++;
   }
   
   public boolean checkSide(String dir)
   {
     switch(dir)
     {
       case "R":
         for(int i = 0; i < 4; i++)
           if(theTetromino[i][0] > 10)
           {
             return false;
           }
             break;
       case "L":
         for(int i = 0; i < 4; i++)
           if(theTetromino[i][0] < 1)
           {
             return false;
           }
             break;
       case "D":
         for(int i = 0; i < 4; i++)
           if(theTetromino[i][1] > 22)
           {
             isActive = false;
             return false;
           }
             break;      
     }
     
     return true;
     
   }
   public void moveTetromino(String dir)
   {
     if(checkSide(dir))
     {
       if(dir == "R")
       {
         for(int i = 0; i < 4; i++)
         {
            theTetromino[i][0]++; //move right (x)
         }       
       }
       else if(dir == "L")
       {
         for(int i = 0; i < 4; i++)
         {
            theTetromino[i][0]--; //move left (x)
         }       
       }
       else if(dir == "D")
       {
         for(int i = 0; i < 4; i++)
         {
            theTetromino[i][1]++; //move down (y)
         } 
       }
     }
   }
   
   public void rotate()
   {
     if(theTetromino != oTetromino)
     {
       int[][] rotated = new int[4][2];
       if(rotCount % 4 == 0)
       {
         for(int i = 0; i < 4; i++)
         {
             rotated[i][0] = _T[i][1] - theTetromino[1][0];
             rotated[i][1] = -_T[i][0] - theTetromino[1][1];
         }
       }
       else if(rotCount % 4 == 1)
       {
         for(int i = 0; i < 4; i++)
         {
             rotated[i][0] = -_T[i][0] - theTetromino[1][0];
             rotated[i][1] = _T[i][1] - theTetromino[1][1];
         }
       }
       else if(rotCount % 4 == 2)
       {
         for(int i = 0; i < 4; i++)
         {
             rotated[i][0] = -_T[i][1] - theTetromino[1][0];
             rotated[i][1] = _T[i][0] - theTetromino[1][1];
         }
       }
       else if(rotCount % 4 == 3)
       {
         for(int i = 0; i < 4; i++)
         {
             rotated[i][0] = _T[i][0] - theTetromino[1][0];
             rotated[i][1] = _T[i][1] - theTetromino[1][1];
         }
       }
       theTetromino = rotated;
     }
   }
}
