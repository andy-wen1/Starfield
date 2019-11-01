//your code here
Particle[] x;
boolean start = false;
void setup()
{
  //your code here
  size(500, 500);
  background(0);
  x= new Particle[5000];
  for (int i = 0; i < x.length; i++)
  {
    x[i]= new Particle();
    x[100] = new OddballParticle();
  }
}
void draw()
{
  //your code here
  for (int i = 0; i < x.length; i++)
  {
    x[i].show();
    x[i].move();
  }

}
class Particle
{
  //your code here
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle()
  {
    myX=myY=250;
    myAngle= Math.random()*2*Math.PI;
    mySpeed=Math.random()*5;
    myColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move()
  {
    myX =myX + Math.sin(myAngle)/mySpeed;
    myY =myY + Math.tan(myAngle)*mySpeed;
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 3, 3);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  //your code here
  OddballParticle()
  {
    //
  }
  void move()
  {
    myX =myX + Math.sin(myAngle)/mySpeed;
    myY =myY + Math.tan(myAngle)*mySpeed;
  }
  void show()
  {
    rect((float)myX,(float)myY,10,10);
  }
}
