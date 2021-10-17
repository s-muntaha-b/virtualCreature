class Pink {
  
  PVector target, position;
  boolean bugged = false ;
  PImage pinkCurrent, puffPink, buggedPink, blinkPink;
  int time = 0;
  int timeout = 600;
  
  boolean blinking = false;
  int blinkTime = 0;
  int blinkTimeout = 4000;
  int blinkDuration = 200;
  
  
  float distanceOne = 75;
  float distanceTwo = 12;
  float moveSpeed = 0.05;
  
  Pink(float x, float y) {
  target = new PVector(random(width), random(height));
  position = new PVector(x,y);

  puffPink = loadImage ("pinkOpen.png");
  puffPink.resize(puffPink.width/3, puffPink.height/3); //For resizing puffballs
  buggedPink = loadImage("pinkClosed.png");
  buggedPink.resize(puffPink.width, puffPink.height);
  blinkPink = loadImage("pinkBlink.png");
  blinkPink.resize(puffPink.width, puffPink.height);


  pinkCurrent = puffPink;

  imageMode(CENTER);
  }

 void draw () {
    PVector mouse = new PVector(mouseX, mouseY);
    bugged = position.dist(mouse) < distanceOne;
 
  if (bugged) { //The bothered expression
    time = millis();
    pinkCurrent = buggedPink;
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
      pinkCurrent = blinkPink; 
    } else {
      pinkCurrent = puffPink;
    }    
        
}
  image(pinkCurrent, position.x, position.y);
}
}

    

  
  
  
