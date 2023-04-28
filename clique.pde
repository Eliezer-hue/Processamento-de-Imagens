color cor;
void setup()
{
  size(800, 600);
  println("uma vez");
  cor = color(0);
}

void draw()
{
  background(cor);
  println("todo frame");
}

void mouseClicked()
{
  cor = color(random(255), random(255), random(255));
}
