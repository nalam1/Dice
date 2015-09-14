void setup()
{
	size(815,815);
	noLoop();	
}
void draw()
{
	//your code here
	background(0,0,0);
	int sum = 0; 
	for(int i = -2.5;i < 815;i += 51) {
		for(int j = 45;j < 815; j += 51) {
			Die bob = new Die(i,j);
			bob.show();
			sum = sum + bob.dots
		}
	}

	fill(255);
	textSize(20);
	text("total is: " + sum, 125,25);

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, dots;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		dots = (int)(Math.random()*6+1);
	}
	void roll()
	{
		//your code here
		
	}
	void show()
	{
		//your code here
		
		stroke(200,200,200)
		fill(0);
		rect(myX,myY,50,50);
		if (dots == 1) {
			fill(255);
			ellipse(myX+25,myY+25,10,10);
		}
		if (dots == 2) {
			fill(255);
			ellipse(myX+10,myY+10,10,10);
			ellipse(myX+40,myY+40,10,10);
		}
		if (dots == 3) {
			fill(255);
			ellipse(myX+10,myY+10,10,10);
			ellipse(myX+25,myY+25,10,10);
			ellipse(myX+40,myY+40,10,10);
		}
		if (dots == 4) {
			fill(255);
			ellipse(myX+10,myY+10,10,10);
			ellipse(myX+40,myY+40,10,10);
			ellipse(myX+40,myY+10,10,10);
			ellipse(myX+10,myY+40,10,10);
		}
		if (dots == 5) {
			fill(255);
			ellipse(myX+10,myY+10,10,10);
			ellipse(myX+40,myY+40,10,10);
			ellipse(myX+40,myY+10,10,10);
			ellipse(myX+10,myY+40,10,10);
			ellipse(myX+25,myY+25,10,10);

		}
		if (dots == 6) {
			fill(255);
			ellipse(myX+10,myY+10,10,10);
			ellipse(myX+40,myY+40,10,10);
			ellipse(myX+40,myY+10,10,10);
			ellipse(myX+10,myY+40,10,10);
			ellipse(myX+10,myY+25,10,10);
			ellipse(myX+40,myY+25,10,10);
		}
	}
}
