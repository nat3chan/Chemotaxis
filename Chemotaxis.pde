Walker [] bubbles;

class Walker
{
  int myX, myY;
  Walker()
  {
    myX = myY = 250;
  }
  void walk()
  {
    if(myX > mouseX){
      myX = myX + (int)(Math.random()*5)-1;
    }
    else if(myX < mouseX){
      myX = myX + (int)(Math.random()*5)-3;
    }
    if(myY > mouseY){
      myY = myY + (int)(Math.random()*5)-1;
    }
    else if(myY < mouseY){
      myY = myY + (int)(Math.random()*5)-3;
    }
  }
  void show()
  {
    ellipse(myX,myY,30,30);
  }
 }

void setup()
{
  size(500,500);
  bubbles = new Walker[10];
    for(int i = 0; i<bubbles.length; i++)
  {
    bubbles[i] = new Walker();
  }
}
void draw()
{
  int o = 0;
  background(0,0,0);
  for(int i = 0; i<bubbles.length; i++)
  {
    bubbles[i].show();
    bubbles[i].walk();
  }
}

