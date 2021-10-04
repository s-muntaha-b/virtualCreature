  int numBlue = 1;
  int numGreen = 1;
  int numPink= 1;
  int numSnacks = 9;
  
  Blue[] bluePuff = new Blue[numBlue];
  Green[] greenPuff = new Green[numGreen];
  Pink[] pinkPuff = new Pink[numPink];
  Star[] starSnacks = new Star[numSnacks];



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
