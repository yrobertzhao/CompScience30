
void setup(){
  size(500,500);
  rectMode(CENTER);
}

void draw(){
  fill(random(255),random(255),random(255), random(128,255));
  stroke(random(255),random(255),random(255),random(128,255));
  strokeWeight( map(mouseX, 0, width, 1, 20 ));
  rect(random(width),random(height),random(10,100),random(10,100));
  //println((int)random(255));
}
