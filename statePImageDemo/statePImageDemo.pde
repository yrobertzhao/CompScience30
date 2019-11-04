//PImage Demo One

int direction = 0; //0 - left
                   //1 - right
PImage lionL, lionR;

void setup(){
  size(800,800);
  lionL = loadImage("lion-left.png"); 
  lionR = loadImage("lion-right.png");
  imageMode(CENTER);
}

void updateState(){
  if (pmouseX > mouseX){
    direction = 0;
  }
  else if (pmouseX < mouseX){
    direction = 1;
  }
}

void draw(){
  background(255);
  updateState();
  println("mouseX:" + mouseX + "pmouseX:" + pmouseX);
  if (direction == 0){
    image(lionL, mouseX, mouseY);
  }
  else {
    image(lionR, mouseX, mouseY);
  }
}
