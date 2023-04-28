void brilho(PImage original, int brilho, float mult)
{
  float r, s;
  
  original.loadPixels();
  for (int i = 0; i < original.pixels.length; i++)
  {
    r = red(original.pixels[i]);
    
    //calcul novo valor
    s = r * mult + brilho;
    s = constrain(s, 0, 255);
    //mudar o valor
    original.pixels [i] = color(s);
  }
  original.updatePixels();
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
