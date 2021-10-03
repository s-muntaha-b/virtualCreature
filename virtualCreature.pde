  int numbluePuff = 2;
  int numgreenPuff = 2;
  int numpinkPuff = 2;
  int numstarSnacks = 24;
  
  bluePuff[] bluePuff = new bluePuff[numbluePuff];
  greenPuff[] greenPuff = new greenPuff[numgreenPuff];
  pinkPuff[] pinkPuff = new pinkPuff[numpinkPuff];
  starSnacks[] starSnacks = new starSnacks[numpinkPuff];



void setup() {
  size(1200,800, P2D);
  
 for (int i=0; i<bluePuff.length; i++) {
    bluePuff[i] = new bluePuff(random(width), random(height));
  }
  
  for (int i=0; i<greenPuff.length; i++) {
    greenPuff[i] = new greenPuff(random(width), random(height));
  }
  
   for (int i=0; i<pinkPuff.length; i++) {
    pinkPuff[i] = new pinkPuff(random(width), random(height));
   }
  for (int i=0; i<foods.length; i++) {
    starSnacks[i] = new starSnacks(random(width), random(height));
  }
}

void draw() {
  background(0);
  
  for (int i=0; i<starSnacks.length; i++) {
    starSnacks[i].run();
  }
  
  for (int i=0; i<bluePuff.length; i++) {
    bluePuff[i].run();
  }
}
