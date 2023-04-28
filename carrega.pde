PImage img;

void setup(){
   float r, g, b, cinza;
   size(512, 512);
   img = loadImage("lena.bmp");
   
   img.loadPixels();
   for(int i = 0; i < img.pixels.length; i++)
   {
     r = red(img.pixels[i]);
     g = green(img.pixels[i]);
     b = blue(img.pixels[i]);
     cinza = (r*0.3 + g*0.59 + b*0.11);
     //mudar o valor
     img.pixels [i] = color(cinza);
     
     
   }
   img.updatePixels();
   
   image(img, 0, 0);
}
