PImage puffballOne;
PImage puffbalTwo;
PImage puffballThree;

void setup() {
  size(1080, 1080, P2D);
  puffballOne = loadImage("puffballBlue.png");
  puffballTwo = loadImage("puffballPink.png");
  puffballThree = loadImage("puffballGreen.png");



randomX = random(width);
randomY = random(height);
generateOne = puffballOne(randomX, randomY, randomX, randomY);
generateTwo = puffballTwo(randomX, randomY, randomX, randomY);
generateThree = puffballThree(randomX, randomY, randomX, randomY);
