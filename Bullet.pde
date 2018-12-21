class Bullet extends Floater
{
  public Bullet(Spaceship theShip)
  {
   myColor = 100;
   myCenterX = nasa.getX();
   myCenterY = nasa.getY();
   myPointDirection = nasa.getPointDirection();
   double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX = 15*Math.cos(dRadians)+ nasa.getDirectionX();
    myDirectionY = 15*Math.sin(dRadians)+ nasa.getDirectionY();
   
    
  }
  
  
   public void setX(int x)      
      {
        myCenterX = x;
      }
      public int getX()
      {
        return (int)myCenterX;
      }
      public void setY(int y)
      {
        myCenterY = y; 
      }
      public int getY()
      {
        return (int)myCenterY;
      }
      public void setDirectionX(double x)
      {
        myDirectionX = x;
      }
      public double getDirectionX()
      {
        return (double)myDirectionX;
      }
      public void setDirectionY(double y)
      {
        myDirectionY = y;
      }
      public double getDirectionY()
      {
        return (double)myDirectionY;
      }
      public void setPointDirection(int degrees)
      {
        myPointDirection = degrees;
      }
      public double getPointDirection()
      {
        return (double)myPointDirection;
      }
    public void show(){
      fill(255);
      ellipse(getX(),getY(),5,5);
      
    }
    public void move(){
      myCenterX += myDirectionX;
      myCenterY += myDirectionY;
      
      
    }
  
}
