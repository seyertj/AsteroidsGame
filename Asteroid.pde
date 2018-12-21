class Asteroid extends Floater
{
  private int rotSpeed;
  public Asteroid()
  {
    corners = 6;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = -13;
    yCorners[0] = -10;
    xCorners[1] = 9;
    yCorners[1] = -10;
    xCorners[2] = 15;
    yCorners[2] = 2;
    xCorners[3] = 8;
    yCorners[3] = 12;
    xCorners[4] = -13;
    yCorners[4] = 10;
    xCorners[5] = -7;
    yCorners[5] = 2;
 
    myColor = color(150);
    myCenterX = myCenterY = Math.random()*600;
    myDirectionX = (double)(Math.random()*3)-1.5;
    myDirectionY = (double)(Math.random()*3)-1.5;
    myPointDirection = Math.random()*361;
  }
  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int)myCenterX;}   
  public void setY(int y) {myCenterY = y;}  
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;} 
  public double getDirectionX() {return myDirectionX;}
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}
  public double getPointDirection() {return myPointDirection;}
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
}
