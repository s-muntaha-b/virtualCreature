Blue blue;

PImage space; //Free to use image downloaded from https://www.pxfuel.com/en/free-photo-jrgja

void setup () {
  size(1200, 800, P2D);
  
  blue = new Blue();
  
space = loadImage("pinkSpace.jpg"); //Background
space.resize(1200,800);
  
}

void draw() {
   background(space);
   
   blue.draw();
}
