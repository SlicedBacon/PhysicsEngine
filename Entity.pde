//direction is a float to simplify conversion to radians
//*note*: direction is treated in degrees. DO NOT INSTANTIATE INTO RADIANS
private float dir = 0.0;

private float mass = 0;


public class Entity extends Actor
{
  public Entity()
  {
    
  }
  
  //setters and getters
  public void setDir(float dirIn)
  {
    dir = dirIn;
  }
  
  public float getDir()
  {
    return dir;
  }
  
  public void setMass(float massIn)
  {
    mass = massIn;
  }
  
  public float getMass()
  {
    return mass;
  }
  
  
}
