class starSnacks {
  
  PVector position;
  float sizeVal;
  PImage starSnackOne;
  PImage starSnackTwo;
  PImage starSnackThree;
  boolean on = true;
  
  starSnacks(float x, float y) {
    position = new PVector(x, y);
    sizeVal = size(20,20);
  }
  
  void draw() {
    if (on) {
      loadimage ("starPurple.png");
      starSnackOne(position.x, position.y, sizeVal, sizeVal);
      loadimage ("starGreen.png");
      starSnack2(position.x, position.y, sizeVal, sizeVal);
      loadimage ("starOrange.png");
      starSnack3(position.x, position.y, sizeVal, sizeVal);
    }
  }
  
  void run() {
    update();
    draw();
  }
  
}
