Star[] sky = new Star[200];
Spaceship ann;
//Asteroid[] rock = new Asteroid[10];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
public void setup() 
{
  size(600,600);
  for (int s = 0; s < sky.length; s++)
  {
    sky[s] = new Star();
  }
  for (int r = 0; r < 10; r++)
  {
    rock.add(new Asteroid());
  }
  ann = new Spaceship();
}
public void draw() 
{
  background(0);
  for (int s = 0; s < sky.length; s++)
  {
    sky[s].show();
  }
  for (int r = 0; r < rock.size(); r++)
  {
    rock.get(r).show();
    rock.get(r).move();
    rock.get(r).turn((int)(3));
  }
  ann.show();
  ann.move();
}
public void keyPressed()
{
  if(key == 'w')
  {
    ann.setDirectionX(0);
    ann.setDirectionY(0);
    ann.setX((int)(Math.random()*600));
    ann.setY((int)(Math.random()*600));
    ann.setPointDirection((int)(Math.random()*361));
  }
  if(key == 's')
  {
    ann.accelerate(0.3);
  }
  if(key == 'a')
  {
    ann.turn(-6);
  }
  if(key == 'd')
  {
    ann.turn(6);
  }
}
