Star[] sky = new Star[200];
Spaceship ann;
public void setup() 
{
  size(600,600);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  ann = new Spaceship();
}
public void draw() 
{
  background(0);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }
  ann.show();
  ann.move();
}
public void keyPressed()
{
  if(key == '2')
  {
    ann.setDirectionX(0);
    ann.setDirectionY(0);
    ann.setX((int)(Math.random()*600));
    ann.setY((int)(Math.random()*600));
  }
  if(key == '5')
  {
    ann.accelerate(0.3);
  }
  if(key == '4')
  {
    ann.turn(-10);
  }
  if(key == '6')
  {
    ann.turn(10);
  }
}
