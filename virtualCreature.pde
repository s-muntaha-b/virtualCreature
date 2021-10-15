PVector target, position;
boolean bugged = false ;
PImage blueCurrent, puffBlue, buggedBlue;
PImage space; //Free to use image downloaded from https://www.pxfuel.com/en/free-photo-jrgja
int time = 0;
int timeout = 600;
int distance = 75;
void setup () {
  size(1200, 800, P2D);
  
target = new PVector(random(width), random(height));
position = new PVector(width/2, height/2);

space = loadImage("pinkSpace.jpg");
space.resize(1200,800);
puffBlue = loadImage ("blueOpen.png");
puffBlue.resize(puffBlue.width/3, puffBlue.height/3);
buggedBlue = loadImage("blueClosed.png");
buggedBlue.resize(puffBlue.width, puffBlue.height);


blueCurrent = puffBlue;

imageMode(CENTER);
}

void draw () {
  background(space);
  PVector mouse = new PVector(mouseX, mouseY);
  bugged = position.dist(mouse) < distance;
 
  if (bugged) {
    time = millis();
    blueCurrent = buggedBlue;
    position = position.lerp(target, 0.05);
      if (position.dist(target) < 12){
    target = new PVector(random(width), random(height));
   }
  } else if (!bugged && millis() > time + timeout) {
    blueCurrent = puffBlue;
  
}
  image(blueCurrent, position.x, position.y);
}
