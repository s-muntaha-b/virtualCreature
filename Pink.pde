class Pink {
  
  PVector target, position;
  boolean bugged = false ;
  PImage pinkCurrent, puffPink, buggedPink;
  int time = 0;
  int timeout = 600;
  
  boolean blinking = false;
  int blinkTime = 0;
  int blinkTimeout = 4000;
  int blinkDuration = 200;
  
  
  float distanceOne = 75;
  float distanceTwo = 12;
  float moveSpeed = 0.05;
  
  Pink() {
     target = new PVector(random(width), random(height));
  position = new PVector(width/2, height/2);

  puffPink = loadImage ("pinkOpen.png");
  puffPink.resize(puffPink.width/3, puffPink.height/3); //For resizing creature
  buggedPink = loadImage("pinkClosed.png");
  buggedPink.resize(puffPink.width, puffPink.height);


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
    pinkCurrent = puffPink;
  
}
  image(pinkCurrent, position.x, position.y);
}
}

    

  
  
  
