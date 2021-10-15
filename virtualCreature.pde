PVector target, position;
boolean moving = false ;
PImage bluePuff;
PImage space; //Free to use image downloaded from https://www.pxfuel.com/en/free-photo-jrgja

void setup () {
  size(1200, 800, P2D);
  
target = new PVector(random(width), random(height));
position = new PVector(width/2, height/2);
space = loadImage("pinkSpace.jpg");
space.resize(1200,800);
bluePuff = loadImage ("blueOpen.png");
bluePuff.resize(bluePuff.width/4, bluePuff.height/4);
  
imageMode(CENTER);
}

void draw () {
  background(space);
  PVector mouse = new PVector(mouseX, mouseY);
  moving = position.dist(mouse) < 200;
 
  if (moving) {
    position = position.lerp(target, 0.05);
      if (position.dist(target) < 12){
    target = new PVector(random(width), random(height));
  }
  }
  image(bluePuff, position.x, position.y);
}
