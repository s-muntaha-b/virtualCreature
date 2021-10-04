class bluePuff {
  
  boolean debug = true;
  PVector position, target;
  PImage currentFace, face01, face02;
  float margin = 30;

  boolean isBugged = false;
  int buggedMarkTime = 0;
  int buggedTimeout = 4000;
  float buggedSpread = 7;
  
  boolean isBlinking = false;
  int blinkMarkTime = 0;
  int blinkTimeout = 5000;
  int blinkDuration = 250;
  
 boolean isHunting = false;
  
  float triggerDistance1 = 100;
  float triggerDistance2 = 25;
  float movementSpeed = 0.08;
    
  // This is the constructor; it needs to have the same name as the class.
  bluePuff(float x, float y) {
    position = new PVector(x, y);
    pickEscapeTarget();
    
    face01 = loadImage("blueOpen.png");
    face01.resize(face01.width/3, face02.height/3);
    face02 = loadImage("blueClosed.png");
    face02.resize(face01.width, face02.height);
    
    currentFace = face01;
  }
  
  void update() {
    PVector mousePos = new PVector(mouseX, mouseY);
    isBugged = position.dist(mousePos) < triggerDistance1;
    
    if (isBugged) {
      isHunting = false;
      buggedMarkTime = millis();
      currentFace = face02; 
      if (position.dist(target) < triggerDistance2) {
        pickEscapeTarget();
      }
    } else if (!isBugged && millis() > buggedMarkTime + buggedTimeout) {
      if (!isBlinking && millis() > blinkMarkTime + blinkTimeout) {
        isBlinking = true;
        blinkMarkTime = millis();
      } else if (isBlinking && millis() > blinkMarkTime + blinkDuration) {
        isBlinking = false;
      }
  
      // Steve heads toward food if happy
      if (!isHunting) {
        pickFoodTarget();
        isHunting = true;
      }
    } else if (!isBugged && millis() > buggedMarkTime + buggedTimeout/6) {
      currentFace = face01; 
    }
  
    if (isBugged || isHunting) {
      position = position.lerp(target, movementSpeed).add(new PVector(random(-buggedSpread, buggedSpread), random(-buggedSpread, buggedSpread)));
    }
    
    if (isHunting && position.dist(target) < 5) {
      starSnacks[starSnackOne].alive = false; 
      pickFoodTarget();
    }
    
    position.y += sin(millis()) / 2;
  }
  
  void draw() {    
    image(currentFace, position.x, position.y);
  }
  void run() {
    update();
    draw();
  }
  
  void pickEscapeTarget() {
    target = new PVector(random(margin, width-margin), random(margin, height-margin));
  }
  
  void pickFoodTarget() {
    foodChoice = int(random(starSnacks.length));
    if (starSnacks[foodChoice].alive) {
      target = starSnacks[foodChoice].position;
    }
  }
  
}
