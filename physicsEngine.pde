int i = 0;

Rect rect;

void setup()
{
  rectMode(CENTER);
  size(200, 200);
  rect = new Rect(100, 100, 20, 20);
 //frameRate(600);
}

void draw()
{
  background(255);
  i += 15;
  rect.setDir(i);
  rect.act();
}
