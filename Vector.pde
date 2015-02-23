private float xComp = 0;
private float yComp = 0;


private float mag = 0;

private float vecDir = 0;
public class Vector
{
  public Vector()
  {
    
  }
  
  public Vector(float dirIn, float magIn)
  {
    vecDir = dirIn;
    mag = magIn;
    
    xComp = mag * cos(radians(-vecDir));
    yComp = mag * sin(radians(-vecDir));
  }
  
  //setters and getters
  public void setX(float xIn)
  {
    xComp = xIn;
  }
  
  public float getX()
  {
    return xComp;
  }
  
  public void setY(float yIn)
  {
    yComp = yIn;
  }
  
  public float getY()
  {
    return yComp;
  }
  
  public void setMag(float magIn)
  {
    mag = magIn;
  }
  
  public float getMag()
  {
    return mag;
  }
  
  public void setDir(float dirIn)
  {
    vecDir = dirIn;
  }
  
  public float getDir()
  {
    return vecDir;
  }
  
  //various doer methods
  
  //adds a vector to the current vector
  public void addVec(Vector vecIn) {
  //add the x and y compnents appropriately
    xComp += vecIn.getX();
    yComp += vecIn.getY();
    
    //recalculate the magnitude and direction
    mag = (float) Math.sqrt(xComp*xComp + yComp*yComp);
    vecDir = acos((xComp / mag));
  }
  
  
  //scales the current vector by a scalar
  public void scaleVec(float scaleIn)
  {
    xComp *= scaleIn;
    y *= scaleIn;
    
    //recalculate magnitude
    mag = (float) Math.sqrt(xComp*xComp + yComp*yComp);
  }
  
  //returns the dot product of the current vector and another vector
  public float dotProduct(Vector vecIn)
  {
    return xComp * vecIn.getX() + yComp * vecIn.getY();
  }
  
  //normalizes the vector to a magnitude of 1
  public void normalizeVec()
  {
    if(mag != 0 && mag != 1)
    {
      mag = 1;
    }
    
    //recalculates the x component and y component
    xComp = mag * cos(radians(-vecDir));
    yComp = mag * sin(radians(-vecDir));
    
  }
  
  
  //converts the vector into an array of x and y components
  public float[] toArray()
  {
    float[] array = new float[2];
    array[0] = xComp;
    array[1] = yComp;
    return array;
  }
}
