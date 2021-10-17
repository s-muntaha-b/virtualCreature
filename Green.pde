class Green {
  
  PVector target, position;
  boolean bugged = false ;
  PImage greenCurrent, puffGreen, buggedGreen, blinkGreen;
  int time = 0;
  int timeout = 600;
 
  boolean blinking = false;
  int blinkTime = 0;
  int blinkTimeout = 3000;
  int blinkDuration = 200;
  
  float distanceOne = 75;
  float distanceTwo = 12;
  float moveSpeed = 0.05;
  
  
  Green() {
  target = new PVector(random(width), random(height));
  position = new PVector(width/2, height/2);

  puffGreen = loadImage ("greenOpen.png");
  puffGreen.resize(puffGreen.width/3, puffGreen.height/3); //For resizing creature
  buggedGreen = loadImage("greenClosed.png");
  buggedGreen.resize(puffGreen.width, puffGreen.height);
  blinkGreen = loadImage("greenBlink.png");
  blinkGreen.resize(puffGreen.width, puffGreen.height);

  greenCurrent = puffGreen;

  imageMode(CENTER);
  }

 void draw () {
    PVector mouse = new PVector(mouseX, mouseY);
    bugged = position.dist(mouse) < distanceOne;
 
  if (bugged) { //The bothered expression
    time = millis();
    greenCurrent = buggedGreen;
    position = position.lerp(target, moveSpeed);
      if (position.dist(target) < distanceTwo){
    target = new PVector(random(width), random(height));
   }
  } else if (!bugged && millis() > time + timeout) {
if (!blinking && millis() > blinkTime + blinkTimeout) {
      blinking = true;
      blinkTime = millis();
    } else if (blinking && millis() > blinkTime + blinkDuration) {
      blinking = false;
    }

    if (blinking) {
      greenCurrent = blinkGreen; 
    } else {
      greenCurrent = puffGreen; // 
    }    
      
}
  image(greenCurrent, position.x, position.y);
    
 
  
  
  
  } 
}
