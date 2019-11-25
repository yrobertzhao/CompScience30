class Mover{
  //Properties
  float x, y;
  color c;
  float size;
  float speed;
  //Constructor
  Mover(float x_, float y_){
    x = x_;
    y = y_;
    c = color(random(255),random(255),random(255));
    size = random(10,25);
    speed = random(2,7);
  }
  
  //Class Methods
  void display(){    
    fill(c);
    rect(x,y,size,size);  
  }
  
  void move(){
    x += speed;
    if (x > width) x = x -width;
  }
}
