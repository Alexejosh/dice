int one = 0;
int two = 0;
int three = 0;
int four = 0;
int five = 0;
int six = 0;

int sum = 0;

void setup()
{
  noLoop();
  size(680, 770);

}
void draw()
{
  background(46, 34, 216);
  for(int m=20; m<520; m+=100){
    for(int x=50; x<600; x+=100){
      Die bob = new Die(x, m);
      bob.show();
      bob.roll();

    }
  }

  textSize(20);
  text("Total sum: "+sum, 175, 700);
  text("Total # of 1: "+one, 50, 550);
  text("Total # of 2: "+two, 50, 600);
  text("Total # of 3: "+three, 50, 650);
  text("Total # of 4: "+four, 270, 550);
  text("Total # of 5: "+five, 270, 600);
  text("Total # of 6: "+six, 270, 650);
}
void mousePressed()
{
  redraw();
  sum=0;
  six=0;

}
class Die //models one single dice cube
{

  int x1, y1, num, s;
  //variable declarations here
  Die(int x, int y) //constructor
  {
  x1=x;
  y1=y;
  num=(int)(Math.random()*6)+1;
  s=18;
    //variable initializations here
  }
  void roll()
  {
    noStroke();
    fill(240);
    num=(int)(Math.random()*6)+1;
    sum=sum + num;

    //your code here
    if(num == 1) 
    {
      one=1+one;
      ellipse(x1+40, y1+40, s, s);
    }
    else if(num == 2)
    {
      two=1+two;
      ellipse(x1+20, y1+20, s, s);
      ellipse(x1+60, y1+60, s, s);
    }
    else if(num == 3)
    {
      three=1+three;
      ellipse(x1+20, y1+20, s, s);
      ellipse(x1+40, y1+40, s, s);
      ellipse(x1+60, y1+60, s, s);
    }
    else if(num == 4)
    {
      four=1+four;
      ellipse(x1+20, y1+20, s, s);
      ellipse(x1+20, y1+60, s, s);
      ellipse(x1+60, y1+60, s, s);
      ellipse(x1+60, y1+20, s, s);
    }
    else if(num == 5)
    {
      five=1+five;
      ellipse(x1+20, y1+20, s, s);
      ellipse(x1+20, y1+60, s, s);
      ellipse(x1+60, y1+60, s, s);
      ellipse(x1+60, y1+20, s, s);
      ellipse(x1+40, y1+40, s, s);
    }
    else if(num == 6)
    {
      six=1+six;
      ellipse(x1+20, y1+20, s, s);
      ellipse(x1+20, y1+60, s, s);
      ellipse(x1+60, y1+60, s, s);
      ellipse(x1+60, y1+20, s, s);
      ellipse(x1+20, y1+40, s, s);
      ellipse(x1+60, y1+40, s, s);
    }
    //your code here
  }
  void show()
  {

  noStroke();
  fill((int)(Math.random()*150),(int)(Math.random()*150),(int)(Math.random()*150));
  rect(x1, y1, 80, 80, 12);
    //your code here
  }
}