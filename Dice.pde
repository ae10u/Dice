int counter;
void setup()
{
  size(635, 580);
  background(115, 147, 179);
  textAlign(CENTER, CENTER);
  Die bob;
  noLoop();
}
void draw()
{
  background(115, 147, 179);
  for (int x = 0; x <= 600; x+= 105) 
    for (int y = 0; y <= 500; y+= 105) {
      Die bob =new Die(x, y);
      bob.roll();
      bob.show();
    }
   text("Number Of Dots: " + counter, 315, 550);
   noLoop(); 
}
void mousePressed()
{
  counter = 0;
  redraw();
}
class Die //models one die
{
  int myX;
  int myY;
  int dots;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    dots=(int)((Math.random()*6)+1);
  }
  void roll()
  {
    counter += dots;
  }
  void show()
  {
    fill(255, 255, 242);
    rect(myX, myY, 100, 100, 20);
    if(dots==1){
      fill(240, 255, 255);
      ellipse(myX+50,myY+50,20,20);
    } 
    if(dots==2){
      fill(240, 255, 255);
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+75,myY+75,20,20);
    } 
    if(dots==3){
      fill(240, 255, 255);
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+50,myY+50,20,20);
      ellipse(myX+75,myY+75,20,20);
    }
    if(dots==4){
      fill(240, 255, 255);
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+25,myY+75,20,20);
      ellipse(myX+75,myY+25,20,20);
      ellipse(myX+75,myY+75,20,20);
    }
    if(dots==5){
      fill(240, 255, 255);
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+25,myY+75,20,20);
      ellipse(myX+75,myY+25,20,20);
      ellipse(myX+75,myY+75,20,20);
      ellipse(myX+50,myY+50,20,20);
    }
    if(dots==6){
      fill(240, 255, 255);
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+25,myY+75,20,20);
      ellipse(myX+75,myY+25,20,20);
      ellipse(myX+75,myY+75,20,20);
      ellipse(myX+75,myY+50,20,20);
      ellipse(myX+25,myY+50,20,20);
    }
  }
}
