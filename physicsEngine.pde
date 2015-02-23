Rect rect;

void setup()
{
  rectMode(CENTER);
  size(200, 200);
  rect = new Rect(100, 100, 20, 20);
}

void draw()
{
  background(255);
  rect.setDir(45);
  rect.act();
}
