class GameOfLife{
  public Boolean golArray[][]= new Boolean[10][10];
  
  
  public void generate(int x, int y) { 
    for(int i = 0; i < x; i++) {
      for(int j = 0; j < y; j++){
        Boolean newCell = (Math.random() > .8) ? true : false;
        if (newCell) {
          golArray[i][j] = false;
        } else {
          golArray[i][j] = false;
        }
      }
    }
    
    golArray[5][5] = true;
    golArray[6][5] = true;
    golArray[5][6] = true;
    golArray[6][6] = true;
    
    
  }
  
  public void display(int x, int y) {
    for(int i = 0; i < 10; i++){
      for(int j = 0; j < 10; j++) {
        if (golArray[i][j]) {
          fill(0);
        } else {
          fill(255);
        }
        rect(i*(x/10), j*(y/10), 30, 30);
      }
    }
  }
  
  public void nextIteration() {
    for (int i = 0; i < 10; i++) {
      for (int j = 0; j < 10; j++) {
        int neighbors = numberOfNeighbors(i, j);
        if (neighbors <= 1 || neighbors >= 4) {
          golArray[i][j] = false;
        } else if (neighbors == 3 || neighbors == 2){
          golArray[i][j] = true;
        }
      }
    }
  }
  
  public int numberOfNeighbors(int x, int y) {
    int neighbors = 0;
    try{
      for(int i = -1; i <= 1; i++) {
        for(int j = -1; j <= 1; j++) {
          if(golArray[x+i][j+y]) {
            neighbors++;
          }
        }
      }
      println("Neighbors of " + x +" and " + y + " are " + neighbors); 
    } catch (ArrayIndexOutOfBoundsException e){
    
    }
      
    return neighbors;
  }
    
}
