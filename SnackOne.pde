class SnackOne {
  
  PVector pos;
  float sizing;
  PImage snackOne, snackTwo, snackThree;
  boolean alive;
  
  SnackOne(float x, float y){
  pos = new PVector(x,y);
  sizing = random(10,15);
  
  snackOne = loadImage ("starOrange.png");
  snackOne.resize(snackOne.width/5, snackOne.height/5); 
  
  }
  
    void update() {
      //
  }
  void draw() {
    if (alive) {
   image(snackOne, pos.x, pos.y);

  }
  }
  void run(){
  update();
  draw();
  }
}
