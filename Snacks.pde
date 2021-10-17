class Snacks {
  
  PVector pos;
  float sizing;
  PImage snackOne, snackTwo, snackThree;
  
  Snacks(float x, float y){
  pos = new PVector(x,y);
  sizing = random(10,15);
  
  snackOne = loadImage ("starOrange.png");
  snackOne.resize(snackOne.width/3, snackOne.height/3); 
  snackTwo = loadImage ("starPurple.png");
  snackTwo.resize(snackOne.width, snackOne.height); 
  snackThree = loadImage ("starOrange.png");
  snackThree.resize(snackOne.width/3, snackOne.height/3); 
  
  }
  
    void update() {
      //
  }
  void draw() {
    snackOne(pos.x, pos.y, sizing, sizing);
    
  }
}
