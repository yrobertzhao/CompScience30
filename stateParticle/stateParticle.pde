ArrayList<Particle> myParticles = new ArrayList<Particle>();

void setup() {
  size(800,600);
  
}
 
void mousePressed(){
  myParticles.add(new Particle(mouseX, mouseY));
}
 
void draw() {
  for (int i = 0; i < myParticles.size(); i++){
    myParticles.get(i).move();
    myParticles.get(i).display();
    if (myParticles.get(i).isAlive() == false){
      myParticles.remove(i);
      i--;
    }
  }
  
  
}
