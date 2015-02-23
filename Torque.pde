private String torqueDir = "";

private float torqueMag = 0;

public class Torque
{
  public Torque()
  {
    
  }
  
  //setters and getters
  public void setMag(float magIn)
  {
    torqueMag = magIn;
  }
  
  public float getMag()
  {
    return mag;
  }
  
  public void setDir(String dirIn)
  {
    if(dirIn.equals("clockwise"))
    {
      torqueDir = "clockwise";
    }
    else if(dirIn.equals("counterclockwise"))
    {
      torqueDir = "counterclockwise";
    }
    else
    {
      torqueDir = null;
    }
  }
  
  public String getDir()
  {
    return torqueDir;
  }
}
