PImage img;
PImage img2;
PImage img3;

float constante = 1;

void setup() {
       size(507, 384);
       //stroke(255);
       img = loadImage("scr1.gif");
       img2 = loadImage("scr2.gif"); 
       img3 = createImage(img.width, img.height, RGB);    
 }
		  
     void draw() {
       image(img3, 0,0);
     }
     
void mousePressed() {
  subt(img, img2, img3, constante);
constante++;  
}

void subt(PImage f, PImage h, PImage g, float c){
 
 g.loadPixels();
 int tam = g.width*g.height;
 for (int pos = 0; pos < tam; pos++){
   float s = red(f.pixels[pos])-red(h.pixels[pos]);
   g.pixels[pos] = color(abs(s)*c);
 }
 g.updatePixels(); 
  
}
