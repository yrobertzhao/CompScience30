boolean left = true;
boolean right = false;
int leftFill = 0;

void setup(){
  size(200,200);
}

void draw(){
  line(width/2, 0, width/2, height);
  
  if(mouseX < width/2){
    left = true;
    right = false;
  }
  else {
    left = false;
    right = true;
}
  println(leftFill + "\t" + left + "\t" + right);
  
  //LOGIC FOR LEFT RECTANGLE
  if(left) {
    leftFill = 0;
  } else leftFill += 5;
  fill(leftFill);
  rect(0, 0,width/2,height-1);
  
  //LOGIC FOR RIGHT RECTANGLE
  if(right) {
    fill(0);
  } else fill(255);
  rect(width/2, 0, width/2-1, height-1);
}
