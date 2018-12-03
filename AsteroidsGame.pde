Spaceship one = new Spaceship();
Star[] stars = new Star[200];
Asteroid [] asteroid = new Asteroid[20];
public void setup() 
{
  size(1000, 1000);
  for(int i = 0; i<stars.length; i++){
    stars[i] = new Star();
  }
  asteroid = new Asteroid [20];
      for(int i = 0; i < asteroid.length; i++){
   int cy = (int)(Math.random() * 1001);
   int cx = (int)(Math.random() * 1001);
   int dx = (int)(Math.random() * 2);
   int dy = (int)(Math.random() * 2);
   int pd = (int)(Math.random() * 360);
   int rs = (int)(Math.random() * 2 + 1);
   asteroid[i] = new Asteroid(dx, dy, cx, cy, pd, rs); 
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
   for(int i = 0; i < asteroid.length; i++){
   asteroid[i].show();
   asteroid[i].move();
 }
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
    one.setX((int)(Math.random()*1000));
    one.setY((int)(Math.random()*1000));
    
  }
}
