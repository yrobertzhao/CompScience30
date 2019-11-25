float offset;
void setup(){
  size(700,700);
}

void draw(){
  background(0);
  fill(88,242,255);
  float a = map(mouseX, 0, width, 0, 90);
  offset = map(mouseY, 0, height, 0, 60);
  
  for(int i = 0; i < 360; i+=45){
    pushMatrix();
    translate(width/2,height/2);
    rotate(radians(i));
    drawRectangle(0, 0, a, 50);
    popMatrix();
  }
}

void drawRectangle(float x, float y, float angle, float w){
  if(w > 5){
    pushMatrix();

    translate(x,y);
    rotate(radians(angle));
    rect(0,0,w,w);
    
    drawRectangle(w + offset, 0, angle, w*0.85);
    popMatrix();
  }
}
