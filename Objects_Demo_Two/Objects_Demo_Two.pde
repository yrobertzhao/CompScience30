int NUM_MOVERS = 10;
ArrayList<Mover> myMovers = new ArrayList<Mover>();
void setup(){
  size(600,600);
  createObjects();
  noStroke();
}


void createObjects(){
  for (int i = 0; i < NUM_MOVERS; i++){
    myMovers.add(new Mover(random(width), random(height)));
  }
}

void mousePressed(){
  removeObject(0);
}

void removeObject(int index){
  myMovers.remove(index);
}

void draw(){
  //fill(255,20);
  //rect(0,0,width,height);
  background(0);
  for (int i = 0; i < myMovers.size(); i++){
    Mover m = myMovers.get(i);  
    m.move();
    m.display();
  }
  //myMover.move();
  //myMover.display();
}
