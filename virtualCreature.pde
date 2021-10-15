PVector target, position;
boolean moving = false ;
PImage blueCurrent, puffBlue, buggedBlue;
PImage space; //Free to use image downloaded from https://www.pxfuel.com/en/free-photo-jrgja

void setup () {
  size(1200, 800, P2D);
  
target = new PVector(random(width), random(height));
position = new PVector(width/2, height/2);
space = loadImage("pinkSpace.jpg");
space.resize(1200,800);
puffBlue = loadImage ("blueOpen.png");
puffBlue.resize(puffBlue.width/4, puffBlue.height/4);
buggedBlue = loadImage("blueClosed.png");
buggedBlue.resize(puffBlue.width/4, puffBlue.height/4);

blueCurrent = puffBlue;

imageMode(CENTER);
}

void draw () {
  background(space);
  PVector mouse = new PVector(mouseX, mouseY);
  moving = position.dist(mouse) < 75;
 
  if (moving) {
    blueCurrent = buggedBlue;
    position = position.lerp(target, 0.05);
      if (position.dist(target) < 12){
    target = new PVector(random(width), random(height));
  }
  } else {
    blueCurrent = puffBlue;
  
}
  image(blueCurrent, position.x, position.y);
}
