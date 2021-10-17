Blue blue;
Green green;
Pink pink;

PImage space; //Free to use image downloaded from https://www.pxfuel.com/en/free-photo-jrgja

void setup () {
  size(1200, 800, P2D);
  
  blue = new Blue();
  green = new Green();
  pink = new Pink();
  
space = loadImage("pinkSpace.jpg"); //Background
space.resize(1200,800);
  
}

void draw() {
   background(space);
   
   blue.draw();
   green.draw();
   pink.draw();
}
