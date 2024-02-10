public void setup()
{
  size (500,500);
  background(0);
}
public void draw()
{
  sierpinski(0,500,500);
}
public void mouseDragged()//optional
{
  frameRate(10);
  fill((int)(Math.random()*256),(int)(Math.random()*100),(int)(Math.random()*250));
  triangle(x, y, x+len, y, x+len/2, y-len*(float)(Math.sqrt(3)/2));
}
public void sierpinski(int x, int y, int len) 
{
  sierpinski(x+len/2, y, len/2); 
  sierpinski(x,y,len/2); 
  sierpinski(x+len/4, y-len/2, len/2);
}
