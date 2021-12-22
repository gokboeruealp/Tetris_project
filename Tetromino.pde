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
   
   public Tetromino()
   {
     w=width / 24;
     
     choice = (int)random(7);
     switch(choice)
     {
       case 0:
         theTetromino = iTetromino;
         r=155;
           break;
//////////////////////////////////////////////////
       case 1:
         theTetromino = oTetromino;
         g=155;
           break;
//////////////////////////////////////////////////
       case 2:
         theTetromino = tTetromino;
         b=155;
           break;
//////////////////////////////////////////////////
       case 3:
         theTetromino = jTetromino;
         r=155;
         b=155;
           break;
//////////////////////////////////////////////////
       case 4:
         theTetromino = lTetromino;
         g=155;
         b=155;
           break;
//////////////////////////////////////////////////
       case 5:
         theTetromino = sTetromino;
         r=155;
         b=155;
           break;
//////////////////////////////////////////////////
       case 6:
         theTetromino = zTetromino;
         b=155;
           break;
     }
   }
   
   public void display()
   {
     for(int i = 0; i < 4; i++)
     {
       rect(theTetromino[i][0]*w, theTetromino[i][0]*w, w, w);
     }
   }
}
