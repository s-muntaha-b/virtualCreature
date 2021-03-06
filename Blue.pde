class Blue {
  
  PVector target, position;
  boolean bugged = false ;
  PImage blueCurrent, puffBlue, buggedBlue, blinkBlue;
  int time = 0;
  int timeout = 600;
 
  boolean blinking = false;
  int blinkTime = 0;
  int blinkTimeout = 3000;
  int blinkDuration = 200;
  
  float distanceOne = 75;
  float distanceTwo = 12;
  float moveSpeed = 0.05; // referenced from class repo, Steve 
  
  
  Blue(float x, float y) {
  target = new PVector(random(width), random(height));
  position = new PVector(x,y);

  puffBlue = loadImage ("blueOpen.png");
  puffBlue.resize(puffBlue.width/3, puffBlue.height/3); //For resizing creature
  buggedBlue = loadImage("blueClosed.png");
  buggedBlue.resize(puffBlue.width, puffBlue.height);
  blinkBlue = loadImage("blueBlink.png");
  blinkBlue.resize(puffBlue.width, puffBlue.height);

  blueCurrent = puffBlue;

  imageMode(CENTER);
  
  }

 void draw () {
    PVector mouse = new PVector(mouseX, mouseY);
    bugged = position.dist(mouse) < distanceOne;
        
  if (bugged) { //The bothered expression
    time = millis();
    blueCurrent = buggedBlue;
    position = position.lerp(target, moveSpeed);
      if (position.dist(target) < distanceTwo){
    target = new PVector(random(width), random(height)); // referenced from class repo, Steve 
   }
  } else if (!bugged && millis() > time + timeout) {
if (!blinking && millis() > blinkTime + blinkTimeout) {
      blinking = true;
      blinkTime = millis();
    } else if (blinking && millis() > blinkTime + blinkDuration) {
      blinking = false; //// referenced from class repo, Steve 
    }

    if (blinking) {
      blueCurrent = blinkBlue; 
    } else {
      blueCurrent = puffBlue; // 
    }    
      
}
  image(blueCurrent, position.x, position.y);
    
  } 
}
