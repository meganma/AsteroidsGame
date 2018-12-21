Spaceship one;
Star[] stars = new Star[200];
ArrayList <Asteroid> asteroid = new ArrayList <Asteroid>();
ArrayList <Bullet> micasa = new ArrayList<Bullet>();
public void setup() 
{
  size(1000, 1000);
  for(int i = 0; i<stars.length; i++){
    stars[i] = new Star();
  }
   one= new Spaceship();
   for(int i = 0; i < 30; i++){
   asteroid.add(new Asteroid());
   asteroid.get(i).setDirectionX(Math.random()*5-2);
   asteroid.get(i).setDirectionY(Math.random()*5-2);
   asteroid.get(i).setPointDirection((int)(Math.random()*360));
   asteroid.get(i).myColor = 200;
  }
}
public void draw() 
{
  background(0);
  one.move();
  for(int i = 0; i<stars.length; i++){
     stars[i].show();
     one.show();
  }
  
 for(int i = 0; i < asteroid.size(); i++){
   asteroid.get(i).show();
   asteroid.get(i).move();
   
     for(int i = 0; i< micasa.size() ; i++)
{
   micasa.get(i).show();
   micasa.get(i).move();
  
}
   for(int i = 0; i<asteroid.size() ; i++){
     for(int q = 0; q <micasa.size(); q++)
     {
   if (dist(micasa.get(q).getX(), micasa.get(q).getY(), micasa.get(i).getX(), micasa.get(i).getY())<=27 ){
   asteroid.remove(i);   
   micasa.remove(q);
   break;
   }
   }
   }
   
     if(dist(one.getX(),one.getY(), asteroid.get(i).getX(), asteroid.get(i).getY()) <= 23){
      asteroid.remove(i);
 }
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
    if(key == 'r'){micasa.add(new Bullet(one));}
}
