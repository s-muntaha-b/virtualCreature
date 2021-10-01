boolean debug = true;
PVector position, target;
PImage puffballOne; 
PImage puffballTwo; 
PImage puffballThree;

boolean isTouched = false;
int touchedMarkTime = 0;
int botheredTimeout = 2500;
float botheredSpread = 5;

float triggerDistance1 = 100;
float triggerDistance2 = 8;
float movementSpeed = 0.10;

void setup() {
  size(1200, 800);
  
  position = new PVector(width/2, height/2);
  
  
 puffballOne = loadImage("puffballBlue.png");
 puffballOne.resize(puffballOne.width/3, puffballOne.height/3);
 puffballTwo = loadImage("puffballPink.png");
 puffballTwo.resize(puffballTwo.width/3, puffballTwo.height/3);
 puffballThree = loadImage("puffballGreen.png");
 puffballThree.resize(puffballThree.width/3, puffballThree.height/3);
 
}

 
