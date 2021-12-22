public class Grid
{
    public float w;
    
    public Grid()
    {
      w = width/24;
    }


public void display()
{
  stroke(155);
  for(int i=1; i<=12; i++)
    {
      line(0,i*w, width/2, i*w);
      line(0,(i+12)*w, width/2, (i+12)*w);
      line(i*w, 0, i*w, height);
    }
  }
}
