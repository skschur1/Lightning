int startX = 95;
int startY = 155;
int endX = 95;
int endY = 155;
void setup()
{
  size(600,300);
  background(185);
}
void draw()
{
	teslaCoil(50, 270);
	teslaCoil(500, 270);
	strokeWeight(5);
	stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	while(endX < 600)
	{
		endX = startX + (int)(Math.random()*9);
		endY = startY + (int)(Math.random()*19) - 9;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}
void mousePressed()
{
	startX = 95;
	startY = 155;
	endX = 95;
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
