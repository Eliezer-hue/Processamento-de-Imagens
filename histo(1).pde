PImage img;
boolean foi;
float [] escala;
void setup() {
  float r, g, b, cinza;
  size(512, 512);
  img = loadImage("lena.bmp");
  cinzaPeso();
  foi = false;
  escala = new float[256];
  preencheVetor();
  normalizaVetor();
}

void draw()
{
  if (!foi)image(img, 0, 0);
  else desenhaHisto();
}

void mouseClicked()
{
  foi = !foi;
}


void desenhaHisto()
{
  background(100);
  stroke(255);
  strokeWeight(2);

  for (int i = 0; i < escala.length; i++)
  {
      line(i * 2, 500, i *2, 500 - escala[i] * 490);    
  }
}

void preencheVetor()
{
  for (int i = 0; i < img.pixels.length; i++)
    escala[(int)red(img.pixels[i])]++;

  println(escala);
}

void normalizaVetor()
{
  float maior = escala[0];
  for (int i = 0; i < escala.length; i++)
  {
    if (escala[i] > maior) maior = escala[i];
  }

  for (int i = 0; i < escala.length; i++)
    escala[i] /= maior;

  println(escala);
}


void cinzaPeso()
{
  float r, g, b, cinza;

  img = loadImage("lena.bmp");
  img.loadPixels();
  for (int i = 0; i < img.pixels.length; i++)
  {
    r = red(img.pixels[i]);
    g = green(img.pixels[i]);
    b = blue(img.pixels[i]);
    cinza = (r*0.3 + g*0.59 + b*0.11);
    //mudar o valor
    img.pixels [i] = color(cinza);
  }
  img.updatePixels();
}
