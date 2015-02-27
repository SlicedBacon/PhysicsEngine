private float rectWidth = 0;
private float rectHeight = 0;



public class Rect extends Entity
{
  public Rect()
  {
    
  }
  
  public Rect(float xIn, float yIn, float widthIn, float heightIn)
  {
    x = xIn;
    y = yIn;
    
    rectWidth = widthIn;
    rectHeight = heightIn;
  }
  
  //setters and getters
  public void setWidth(float widthIn)
  {
    rectWidth = widthIn;
  }
  
  public float getWidth()
  {
    return rectWidth;
  }
  
  public void setHeight(float heightIn)
  {
    rectHeight = heightIn;
  }
  
  //doer methods
  
  //act method. called every frame
  public void act()
  {
    pushMatrix();
    translate(x, y);
    rotate(radians(dir));
    rect(0, 0, rectWidth, rectHeight);
    popMatrix();
    
  }
}
