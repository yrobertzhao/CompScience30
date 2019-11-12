//Fractal Demo One: Cantor Set

void setup(){
  size(600,600);  
}

void draw(){
  drawCantor(width/6,height/3, width*2/3);
}

void drawCantor(float x, float y, float len){
  if (len > 1){
    line(x,y,x+len,y);  //draw the current generation line 
    drawCantor(x,y+20,len/3);  //draw left third recursively
    drawCantor(x + len/3*2, y+20, len/3);
  }
}
