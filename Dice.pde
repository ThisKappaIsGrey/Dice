Die kappa;
int sum, totalThree;
void setup()
{
	noLoop();
  size(500,500);
  //kappa = new Die(225, 225);
}
void draw()
{
	//your code here
sum = 0;
totalThree = 0;
background((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
for(int y = 0; y <= 400; y+= 70){
for(int x = 0; x <= 500; x+= 75){
  Die kappa = new Die(x, y);
  kappa.roll();
  kappa.show();
  sum = sum + kappa.rollResult;
  if(kappa.rollResult == 3){
    totalThree++;
  }
}
}
fill(0);
textSize(30);
text("sum of dice values = " +sum, 100, 475);
text("total of three is " + totalThree, 100, 450);
}
void mousePressed()
{

	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
  int rollResult, theX, theY, r, g, b;
	Die(int x, int y) //constructor;
	{
		//variable initializations here
    theX = x;
    theY = y;
    roll();
	}
	void roll()
	{
		//your code here
    rollResult = (int)((Math.random() * 6) + 1);
    //System.out.println("roll =" + rollResult);
    r = (int)(Math.random() * 256);
    g = (int)(Math.random() * 256);
    b = (int)(Math.random() * 256);
	}
	void show()
	{
    if (rollResult == 1){
    fill(r, g, b);
		rect(theX, theY, 50, 50);
    fill(0);
    ellipse(theX + 25,theY + 25, 10, 10);
  } else if(rollResult == 2){
    fill(r, g, b);
    rect(theX, theY, 50, 50);
    fill(0);
    ellipse(theX + 10, theY + 10, 10, 10);
    ellipse(theX + 40, theY + 40, 10, 10);
  }else if(rollResult == 3){
    fill(r, g, b);
    rect(theX, theY, 50, 50);
    fill(0);
    ellipse(theX + 10, theY + 10, 10, 10);
    ellipse(theX + 40, theY + 40, 10, 10);
    ellipse(theX + 25, theY + 25, 10, 10);
  }else if(rollResult == 4){
    fill(r, g, b);
    rect(theX, theY, 50, 50);
    fill(0);
    ellipse(theX + 10, theY + 10, 10, 10);
    ellipse(theX + 40, theY + 10, 10, 10);
    ellipse(theX + 10, theY + 40, 10, 10);
    ellipse(theX + 40, theY + 40, 10, 10);
  }else if(rollResult == 5){
    fill(r, g, b);
    rect(theX, theY, 50, 50);
    fill(0);
    ellipse(theX + 10, theY + 10, 10, 10);
    ellipse(theX + 40, theY + 10, 10, 10);
    ellipse(theX + 10, theY + 40, 10, 10);
    ellipse(theX + 40, theY + 40, 10, 10);
    ellipse(theX + 25, theY + 25, 10, 10);
  }else{
    fill(r, g, b);
    rect(theX, theY, 50, 50);
    fill(0);
    ellipse(theX + 10, theY + 10, 10, 10);
    ellipse(theX + 40, theY + 10, 10, 10);
    ellipse(theX + 10, theY + 40, 10, 10);
    ellipse(theX + 40, theY + 40, 10, 10);
    ellipse(theX + 10, theY + 25, 10, 10);
    ellipse(theX + 40, theY + 25, 10, 10);
  }
  }
	}
/*rect(225, 225, 50, 50);
ellipse(250, 250, 10, 10);
makes a square dice in the middle.
*/
