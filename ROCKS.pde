class Asteroid extends Floater
{
  private int rotSpeed;
  public Asteroid ()
  {
    rotSpeed = (int)((Math.random()*5)-2);
    corners = 4;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = 8;
    yCorners[0] = 8;
    xCorners[1] = 8;
    yCorners[1] = -8;
    xCorners[2] = -8;
    yCorners[2] = -8;
     xCorners[3] = -8;
     yCorners[3] = 8;
     myColor = (255);
     myCenterX = Math.random()*500;
     myCenterY = Math.random()*500;
    myDirectionX= myDirectionY = 1;
    myPointDirection = 0;
   }
   public void setX (int x) {myCenterX=x;}
  public int getX() {return (int)myCenterX;}
  public void setY (int y) {myCenterY=y;}
  public int getY() {return(int)myCenterY;}
  public void setDirectionX (double x) {myDirectionX = x;}
  public double getDirectionX () {return myDirectionX;}
  public void setDirectionY (double y) {myDirectionY = y;}
  public double getDirectionY () {return myDirectionY;}
  public void setPointDirection (int degrees) {myPointDirection = degrees;;}
  public double getPointDirection () {return myPointDirection;}
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
}