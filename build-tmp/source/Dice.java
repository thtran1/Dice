import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dice extends PApplet {

Die a;
public void setup()
{
	size(600, 600);
	noLoop();
	a = new Die(15,15);
}
public void draw()
{
	background(0);
	a.roll();
	a.show();
}
public void mousePressed()
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
	public void roll()
	{
		//your code here
	}
	public void show()
	{
		rect(xPos,yPos,20,20);
		//your code here
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
