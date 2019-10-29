PImage[] pinImages = new PImage[9];
int frame = 0;

void setup(){
  size(600,600);
  loadImages();
  frameRate(60);
  imageMode(CENTER);
}

void loadImages(){
  for(int i = 0; i<9 ; i++){
    //println("pin-0" + i + ".png");
    pinImages[i] = loadImage("pin-0" + i + ".png");
  }
}

void draw(){
  background(255);
  image(pinImages[frame], width/2, height/2);
  if (frameCount % 4 == 0){
    frame ++;
    if (frame > 8) frame = 0;
  }
}
