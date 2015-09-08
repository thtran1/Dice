Die dice;
int total = 0;
void setup()
{
	size(600, 600);
	noLoop();
}
void draw()
{
	background(255);
	total = 0;
	for (int y = 15; y <= 585; y += 35)
	{
		for (int x = 10; x <= 585; x += 35)
		{
			dice = new Die(x, y);
			dice.roll();
			dice.show();
		}
	}
	fill(0);
	textSize(16);
	text("total roll: " + total, 10,15);
	text("Thien's Dice Program", 400,15);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int xPos, yPos, myRoll, size;//variable declarations here
	Die(int x, int y) //constructor
	{
		myRoll = (int)(Math.random()*6)+1;
		xPos = x;
		yPos = y;
		size = 20;
	}
	void roll()
	{
		myRoll = (int)(Math.random()*6)+1;
	}
	void show()
	{
		fill(0);
		rect(xPos,yPos,size,size);
		stroke(255);
		fill(255);
		int circleSize = size/8;
		if (myRoll == 1)
		{
			ellipse(xPos+(size/2), yPos+(size/2), circleSize, circleSize);
			total+=1;
		}
		if (myRoll == 2)
		{
			ellipse(xPos+(size/4)+1, yPos+(size/4), circleSize, circleSize);
			ellipse(xPos+3*(size/4), yPos+3*(size/4), circleSize, circleSize);
			total+=2;
		}
		if (myRoll == 3)
		{
			ellipse(xPos+(size/4), yPos+(size/4), circleSize, circleSize);
     		ellipse(xPos+(size/2), yPos+(size/2), circleSize, circleSize);
     		ellipse(xPos+3*(size/4)+1, yPos+3*(size/4)+1, circleSize, circleSize);
			total+=3;
		}
		if (myRoll == 4)
		{
			ellipse(xPos+(size/4)+1, yPos+(size/4), circleSize, circleSize); 
      		ellipse(xPos+3*(size/4)+1, yPos+(size/4), circleSize, circleSize); 
     		ellipse(xPos+(size/4)+1, yPos+3*(size/4), circleSize,circleSize); 
     		ellipse(xPos+3*(size/4)+1, yPos+3*(size/4), circleSize,circleSize); 
			total+=4;
		}
		if (myRoll == 5)
		{
			ellipse(xPos+(size/4)+1, yPos+(size/4), circleSize,circleSize); 
      		ellipse(xPos+3*(size/4)+1, yPos+(size/4), circleSize,circleSize); 
      		ellipse(xPos+(size/4)+1, yPos+3*(size/4), circleSize,circleSize); 
      		ellipse(xPos+3*(size/4)+1, yPos+3*(size/4), circleSize,circleSize); 
      		ellipse(xPos+(size/2)+1, yPos+(size/2)-1, circleSize,circleSize);     
			total+=5;
		}
		if (myRoll == 6)
		{
		    ellipse(xPos+(size/4)+1, yPos+(size/4), circleSize,circleSize); 
		    ellipse(xPos+(size/4)+1, yPos+2*(size/4), circleSize,circleSize); 
		    ellipse(xPos+(size/4)+1, yPos+3*(size/4), circleSize,circleSize); 
		    ellipse(xPos+3*(size/4)+1, yPos+(size/4), circleSize,circleSize);
		    ellipse(xPos+3*(size/4)+1, yPos+2*(size/4), circleSize,circleSize);  
		    ellipse(xPos+3*(size/4)+1, yPos+3*(size/4), circleSize,circleSize);   			
			total+=6;
		}

	}
}
