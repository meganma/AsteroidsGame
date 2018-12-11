public class Asteroid extends Floater
{
  private int myNum;
  public Asteroid() {
  corners = 8;
  xCorners= new int[corners];
  yCorners= new int[corners];
  xCorners[0] =-25;
  yCorners[0] =-5;
  xCorners[1] =20;
  yCorners[1] =-8;
  xCorners[2] =-3;
  yCorners[2] =0;
  xCorners[3] =12;
  yCorners[3] =20;
  xCorners[4] =-10;
  yCorners[4] =8;
  xCorners[5] =-9;
  yCorners[5] =0;
  xCorners[6]=-20;
  yCorners[6]=23;
  xCorners[7]=6;
  yCorners[7]=-2;
  
      setPointDirection((int)(Math.random()*360)+1);
   myColor = color(220,220,220);
 
}

public void move(){
  turn(rotSpeed);
  super.move();
  }
  
    public int getNum(){return myNum;}
    private int rotSpeed=(int)(Math.random()*5)-2;
    public void setX(int x) {myCenterX = x;}
    public int getX(){return (int) myCenterX;}
    public void setY(int y) {myCenterY = y;}
    public int getY(){return (int) myCenterY;}
    public void setDirectionX(double x) {myDirectionX = x;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionY(double y) {myDirectionY = y;}
    public double getDirectionY(){return myDirectionY;}
    public void setPointDirection(int degrees)  {myPointDirection = degrees;}
    public double getPointDirection(){return myPointDirection;}
}
