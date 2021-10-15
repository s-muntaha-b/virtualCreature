PVector position, target;
boolean moving = false ;

void setup () {
  size(1000, 1000, P2D);
  
   target = new PVector(random(width), random(height));
  position = new PVector(width/2, height/2);
  
  ellipseMode(CORNER);
}

void draw () {
  background(200);
  PVector mouse = new PVector(mouseX, mouseY);
  moving = position.dist(mouse) < 200;
 
  if (moving) {
    position = position.lerp(target, 0.05);
      if (position.dist(target) < 12){
    target = new PVector(random(width), random(height));
  }
  }
  ellipse(position.x, position.y, 20, 20);
}
