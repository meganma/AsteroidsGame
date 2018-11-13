Spaceship one = new Spaceship();
Star[] stars = new Star[200];
public void setup() 
{
  size(1000, 1000);
  for(int i = 0; i<stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  one.move();
  for(int i = 0; i<stars.length; i++){
     stars[i].show();
  }
  one.show();
}
public void keyPressed(){
  if(key == 'd'){
    one.turn(10);
  }
  if(key == 'a'){
    one.turn(-10);
  }
  if(key == 'w'){
    one.accelerate(0.5);
  }
  if(key == 's'){
    one.setPointDirection((int)(Math.random()*400));
    one.setPointDirection((int)(Math.random()*400));
    one.setX((int)(Math.random()*400));
    one.setY((int)(Math.random()*400));
  }
}
