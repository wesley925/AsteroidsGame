Spaceship BOB = new Spaceship ();
Star [] nightSky = new Star [1000];
Asteroid [] rockFly = new Asteroid [50];
public void setup() 
{
  size (500,500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for (int k = 0; k < rockFly.length; k++)
  {
    rockFly[k] = new Asteroid();
  }
}
public void draw() 
{            
 background(0);
 for (int i = 0; i < nightSky.length; i++)
 {
   nightSky[i].show();
 }
 for (int k = 0; k < rockFly.length; k++)
 {
   rockFly[k].show();
   rockFly[k].move();
 }  
 BOB.show();
 BOB.move();
}
public void keyTyped()
{
  if(key == ' ')
  {
    BOB.setDirectionX(0);
    BOB.setDirectionY(0);
    BOB.setPointDirection((int)(Math.random()*360));
    BOB.setX((int)(Math.random()*500));
    BOB.setY((int)(Math.random()*500));
  }
  if(key == 'w')
  {
    BOB.accelerate(0.3);
  }
  if(key == 'a')
  {
    BOB.turn(-10);
  }
  if(key == 'd')
  {
    BOB.turn(10);
  }
  if(key == 's')
  {
    BOB.accelerate(-0.3);
  }  

}