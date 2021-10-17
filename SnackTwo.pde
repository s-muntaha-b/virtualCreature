class SnackTwo {
  
  PVector pos;
  float sizing;
  PImage snackOne, snackTwo, snackThree;
  
  SnackTwo(float x, float y){
  pos = new PVector(x,y);
  sizing = random(10,15);
  
  snackTwo = loadImage ("starPurple.png");
  snackTwo.resize(snackTwo.width/5, snackTwo.height/5); 
  
  }
  
    void update() {
      //
  }
  void draw() {
   image(snackTwo, pos.x, pos.y);

  }
  void run(){
  update();
  draw();
  }
}
