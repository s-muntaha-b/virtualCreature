class bluePuffball {

boolean debug = true;
PVector position, target;
PImage puffballOne; 

boolean isTouched = false;
int touchedMarkTime = 0;
int botheredTimeout = 1000;
float botheredSpread = 5;

float triggerDistance1 = 100;
float triggerDistance2 = 8;
float movementSpeed = 0.10;

bluePuffball(float x, float y){
position = new PVector(x, y);
pickEscapeTarget();

 face01 = loadImage("face01.png");
    face01.resize(face01.width/3, face01.height/3);
} 
}
