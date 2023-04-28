PImage img;
boolean foi;
float [] escala;

void setup() {  
  size(512, 512);
  img = loadImage("lena.bmp");
  cinzaPeso();
  foi = false;
  escala = new float[256];
}



void draw()
{
  if (!foi)image(img, 0, 0);
  else desenhaHisto();
}

void keyPressed()
{
   println(key, keyCode); 
   if(keyCode == 61) brilho(img, 10, 1);
   if(keyCode == 45) brilho(img, -10, 1);
   if(keyCode == 65) brilho(img, 0, 2);
   if(keyCode == 83) brilho(img, 0, 0.5);
   
   
  
}

void mouseClicked()
{
  foi = !foi;
}


void desenhaHisto()
{
  preencheVetor();
  normalizaVetor();

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

  //println(escala);
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

  //println(escala);
}
