GameOfLife gol; 

void setup(){
  fill(255);
  size(600, 600);
  gol = new GameOfLife();
  gol.generate(10, 10);
  gol.display(600, 600);
}

void draw() {
  background(255);
  gol.nextIteration();
  gol.display(600, 600);
  delay(5000);
}
