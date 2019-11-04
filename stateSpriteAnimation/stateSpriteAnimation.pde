PImage[] spriteImages = new PImage[15];
int frame = 0;
float x, y;
void setup(){
  size(900,900);
  x = 450;
  y = 450;
  loadImages();
  frameRate(60);
  imageMode(CENTER);
}

void loadImages(){
  for(int i = 0; i<15 ; i++){
    spriteImages[i] = loadImage("Sprite-" + i + ".png");
  }
}

void keyPressed(){
  if(key == 'w')
    y -= 6; 
  if(key == 'a') 
    x -= 6;
  if(key == 's') 
    y += 6;
  if(key == 'd')
    x += 6;
 
}

void draw(){
  background(30, 123, 23);
  image(spriteImages[frame], width/2, height/2);
  if (frameCount % 4 == 0){
    frame ++;
    if (frame > 8) frame = 0;
  }
}
