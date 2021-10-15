PVector target, position;
boolean bugged = false ;
PImage blueCurrent, puffBlue, buggedBlue;
PImage space; //Free to use image downloaded from https://www.pxfuel.com/en/free-photo-jrgja
int time = 0;
int timeout = 600;
float distanceOne = 75;
float distanceTwo = 12;
float moveSpeed = 0.05;

void setup () {
  size(1200, 800, P2D);
  
target = new PVector(random(width), random(height));
position = new PVector(width/2, height/2);

space = loadImage("pinkSpace.jpg"); //Background
space.resize(1200,800);
puffBlue = loadImage ("blueOpen.png");
puffBlue.resize(puffBlue.width/3, puffBlue.height/3); //For resizing creature
buggedBlue = loadImage("blueClosed.png");
buggedBlue.resize(puffBlue.width, puffBlue.height);


blueCurrent = puffBlue;

imageMode(CENTER);
}

void draw () {
  background(space);
  PVector mouse = new PVector(mouseX, mouseY);
  bugged = position.dist(mouse) < distanceOne;
 
  if (bugged) { //The bothered expression
    time = millis();
    blueCurrent = buggedBlue;
    position = position.lerp(target, moveSpeed);
      if (position.dist(target) < distanceTwo){
    target = new PVector(random(width), random(height));
   }
  } else if (!bugged && millis() > time + timeout) {
    blueCurrent = puffBlue;
  
}
  image(blueCurrent, position.x, position.y);
}
