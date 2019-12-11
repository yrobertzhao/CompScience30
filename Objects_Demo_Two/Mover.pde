class Mover{
  //Properties
  float x, y;
  color c;
  float size;
  float speed;
  int type; //behavior type
  
  //Constructor
  Mover(float x_, float y_){
    x = x_;
    y = y_;
    c = color(random(255),random(255),random(255));
    size = random(10,25);   
    speed = random(2,7);
    type = int(random(3)); //0, 1, 2
  }
  
  //Class Methods
  void display(){
    fill(c); 
    rect(x,y,size,size);
  }
  
  void move(){
    if (type == 0){ //sliding to the right
      x += speed;
      if (x > width) x = x - width;
    }
    else if (type == 1){  //random walker algorithm
      int choice = int(random(4)); //0,1,2,3
      if (choice == 0){ //UP
        y = y - speed;
      } 
      else if (choice == 1){ //DOWN
        y = y + speed;
      } 
      else if (choice == 2){ //LEFT
        x = x - speed;
      } 
      else if (choice == 3){ //RIGHT
        x = x + speed;
      } 
    }
    else if (type == 2){
      size += (speed/2); 
      if (size > 75 || size < 10) speed *= - 1;
    }
    
  }
}
