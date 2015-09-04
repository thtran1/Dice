Die a;
void setup()
{
	size(600, 600);
	noLoop();
	a = new Die(15,15);
}
void draw()
{
	background(0);
	a.roll();
	a.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int xPos, yPos;//variable declarations here
	Die(int x, int y) //constructor
	{
		xPos = x;
		yPos = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		rect(xPos,yPos,20,20);
		//your code here
	}
}
