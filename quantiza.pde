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
     if(cinza < 32) cinza = 0;
     else if(cinza < 64) cinza = 32;
     else if(cinza < 96) cinza = 64;
     else if(cinza < 128) cinza = 96;
     else if(cinza < 160) cinza = 128;
     else if(cinza < 192) cinza = 160;
     else if(cinza < 224) cinza = 192;
     else if(cinza < 256) cinza = 255;
     
     //mudar o valor
     img.pixels [i] = color(cinza);
     
     
   }
   img.updatePixels();
   
   image(img, 0, 0);
}
