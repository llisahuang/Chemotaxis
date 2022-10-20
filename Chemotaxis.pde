Bacteria [] bob;

void setup() {
  size (500,500);
  background (0);
  bob = new Bacteria[50];
  int i = 0;
  while (i < bob.length){
    bob[i] = new Bacteria();
    i++;
  }
}

void draw(){
  background (0);
  for (int i = 0; i < bob.length; i++)
  {
    bob[i].walk();
    bob[i].show();
  }
}


class Bacteria
{
  int myX, myY, myColor;
  Bacteria()
  {
    myX = 250;
    myY = 250;
    myColor = color((int)(Math.random()*170)+80, (int)(Math.random()*170)+80, (int)(Math.random()*170)+80, 180);
    
  }
  void walk()
  {
    if (mouseX > myX)
      myX = myX + (int)(Math.random()*5) - 1;
    else
     myX = myX + (int)(Math.random()*5) - 3;
     if (mouseY > myY)
      myY = myY + (int)(Math.random()*5) - 1;
    else
     myY = myY + (int)(Math.random()*5) - 3;
  }
  void show()
  { 
    if (myX == mouseX && myY == mouseY)
    fill (0);
    if (myX == mouseX && myY == mouseY)
    fill(myColor);
    ellipse (myX, myY, 20,20);
}
}
