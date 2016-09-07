Die kappa;
void setup()
{
	noLoop();
  size(500,500);
  //kappa = new Die(225, 225);
}
void draw()
{
	//your code here
  /*kappa.roll();
  kappa.show();*/
for(int y = 0; y <= 400; y+= 50){
for(int x = 0; x <= 500; x+= 50){
  Die kappa = new Die(x, y);
  kappa.roll();
  kappa.show();
}
}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
  int rollResult, theX, theY;
	Die(int x, int y) //constructor;
	{
		//variable initializations here
    theX = x;
    theY = y;
	}
	void roll()
	{
		//your code here
    rollResult = (int)((Math.random() * 6) + 1);
    //System.out.println("roll =" + rollResult);
	}
	void show()
	{
    if (rollResult == 1){
    fill(255);
		rect(theX, theY, 50, 50);
    fill(0);
    ellipse(theX + 25,theY + 25, 10, 10);
  } else if(rollResult == 2){
    fill(255);
    rect(theX, theY, 50, 50);
    fill(0);
    ellipse(theX + 10, theY + 10, 10, 10);
    ellipse(theX + 40, theY + 40, 10, 10);
  }else if(rollResult == 3){
    fill(255);
    rect(theX, theY, 50, 50);
    fill(0);
    ellipse(theX + 10, theY + 10, 10, 10);
    ellipse(theX + 40, theY + 40, 10, 10);
    ellipse(theX + 25, theY + 25, 10, 10);
  }else if(rollResult == 4){
    fill(255);
    rect(theX, theY, 50, 50);
    fill(0);
    ellipse(theX + 10, theY + 10, 10, 10);
    ellipse(theX + 40, theY + 10, 10, 10);
    ellipse(theX + 10, theY + 40, 10, 10);
    ellipse(theX + 40, theY + 40, 10, 10);
  }else if(rollResult == 5){
    fill(255);
    rect(theX, theY, 50, 50);
    fill(0);
    ellipse(theX + 10, theY + 10, 10, 10);
    ellipse(theX + 40, theY + 10, 10, 10);
    ellipse(theX + 10, theY + 40, 10, 10);
    ellipse(theX + 40, theY + 40, 10, 10);
    ellipse(theX + 25, theY + 25, 10, 10);
  }else{
    fill(255);
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
