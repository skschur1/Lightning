int startX = 95;
int startY = 155;
int endX = 95;
int endY = 155;
void setup()
{
  size(600,300);
  background(0);
  
}
void draw()
{
	background(0);
	teslaCoil(50, 270);
	teslaCoil(500, 270);
	strokeWeight(5);
	stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	while(endX < 510)
	{
		endX = startX + (int)(Math.random()*9);
		if(startX <= 275) // First half of the lighting; completely random
		{
		endY = startY + (int)(Math.random()*19) - 9;
		}
		else if(startX > 275) // Second half of the lightning; weighted randomness
		{
			if(startY > 155) // If lightning is above wanted end Y
			{
				if(Math.random() < .8)
				{	
					endY = startY + (int)(Math.random()*9) - 9;
				}
				else
				{
					endY = startY + (int)(Math.random()*9);
				}
			}
			else if(startY < 175) // If lightning is below wanted end Y
			{
				if (Math.random() < .8)
				{
					endY = startY + (int)(Math.random()*9);
				}
				else
				{
					endY = startY + (int)(Math.random()*9) - 9;
				}
			}
			else // While lightning is in the wanted end Y
			{
				endY = startY + (int)(Math.random()*19) - 9;
			}
		}
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}
void mousePressed()
{
	startX = 95;
	startY = 155;
	endX = 95 ;
	endY = 155;
}
void teslaCoil(int x,int y)
{
	stroke(0);
	strokeWeight(1);
	fill(255);
	rect(x,y, 51, 10);
	rect(x + 20, y - 100, 11, 100);
	fill(161);
	ellipse(x + 26, y - 115, 30, 30);
}
