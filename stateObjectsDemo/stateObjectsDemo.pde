ArrayList<Mover> myMovers = new ArrayList<Mover>();
Mover myMover; 

void setup(){
  size(600,600);
  //myMover = new Mover(width/2, height/2);
}

void mousePressed(){
  myMovers.add(new Mover(mouseX, mouseY));
}

void draw(){
  fill(255,20);
  rect(0,0,width,height);
  for (int i = 0; i < myMovers.size(); i++){
   Mover m = myMovers.get(i);
   m.move();
   m.display();
   
  }
  //myMover.move();
  //myMover.display();
}
