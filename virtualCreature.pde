Blue[] blues = new Blue[3];
Green[] greens = new Green[3];
Pink[] pinks = new Pink[3];


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
