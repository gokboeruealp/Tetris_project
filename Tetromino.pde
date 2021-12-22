class Tetromino
{
   private int[][] iTetromino = {{0,0}, {1,0}, {2,0}, {3,0}};
   private int[][] oTetromino = {{0,0}, {1,0}, {0,1}, {1,1}};
   private int[][] tTetromino = {{0,0}, {1,0}, {2,0}, {1,1}};
   private int[][] jTetromino = {{0,0}, {1,0}, {2,0}, {2,1}};
   private int[][] lTetromino = {{0,0}, {1,0}, {2,0}, {0,1}};
   private int[][] sTetromino = {{0,0}, {1,0}, {1,1}, {2,1}};
   private int[][] zTetromino = {{0,1}, {1,1}, {1,0}, {2,0}};
   
   private int[][] theTetromino;
   private int r,g,b, choice;
   private boolean isActive;
   
   private float w;
   
   private int counter;
   
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
//////////////////////////////////////////////////
       case 1:
         theTetromino = oTetromino;
         r=(int)random(33, 222);
         g=(int)random(33, 222);
         b=(int)random(33, 222);
           break;
//////////////////////////////////////////////////
       case 2:
         theTetromino = tTetromino;
         r=(int)random(33, 222);
         g=(int)random(33, 222);
         b=(int)random(33, 222);
           break;
//////////////////////////////////////////////////
       case 3:
         theTetromino = jTetromino;
         r=(int)random(33, 222);
         g=(int)random(33, 222);
         b=(int)random(33, 222);
           break;
//////////////////////////////////////////////////
       case 4:
         theTetromino = lTetromino;
         r=(int)random(33, 222);
         g=(int)random(33, 222);
         b=(int)random(33, 222);
           break;
//////////////////////////////////////////////////
       case 5:
         theTetromino = sTetromino;
         r=(int)random(33, 222);
         g=(int)random(33, 222);
         b=(int)random(33, 222);
           break;
//////////////////////////////////////////////////
       case 6:
         theTetromino = zTetromino;
         r=(int)random(33, 222);
         g=(int)random(33, 222);
         b=(int)random(33, 222);
           break;
     }
   }
   
   public void display()
   {
     fill(r, g, b);
     for(int i = 0; i < 4; i++)
     {
       rect(theTetromino[i][0]*w, theTetromino[i][1]*w, w, w);
     }
   }
   
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
            theTetromino[i][1]++; //move left (x)
         } 
       }
     }
   }
}
