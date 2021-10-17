int numBlues = 3;
int numGreens = 3;
int numPinks = 3;

Blue[] blues = new Blue[numBlues];
Green[] greens = new Green[numGreens];
Pink[] pinks = new Pink[numPinks];


PImage space; //Free to use image downloaded from https://www.pxfuel.com/en/free-photo-jrgja

void setup () {
  size(1200, 800, P2D);
  
  for(int i=0; i<blues.length; i++){ 
  blues[i] = new Blue(random(width), random(height));
 }
 for(int i=0; i<greens.length; i++){ 
  greens[i] = new Green(random(width), random(height));
 }
 for(int i=0; i<pinks.length; i++){ 
  pinks[i] = new Pink(random(width), random(height));
 }
 
space = loadImage("pinkSpace.jpg"); //Background
space.resize(1200,800);
  
}

void draw() {
   background(space);
   
 for(int i=0; i<blues.length; i++){ 
   blues[i].draw();
 }
 for(int i=0; i<greens.length; i++){ 
   greens[i].draw();
 }
  for(int i=0; i<pinks.length; i++){ 
   pinks[i].draw();
 }

}
