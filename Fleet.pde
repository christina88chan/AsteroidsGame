class Fleet{
  ArrayList <Spaceship> spaceships = new ArrayList<Spaceship>();
  Fleet(){
    initialize(200,200); //gives the fleet a position 
  }
  public void move(){
    for(int i = 0; i < spaceships.size(); i++){
      spaceships.get(i).move(); //spaceships.get(i) moves them ALL
    }
  }
  public void turn(double degree){
    for(int i = 0; i < spaceships.size(); i++){
      spaceships.get(i).turn(degree);
    }
  }
  public void accelerate(double acceleration){
    for(int i = 0; i < spaceships.size(); i++){
      spaceships.get(i).accelerate(acceleration);
    }
  }
  private void initialize(int positionX, int positionY){ 
    for(int i = 0; i < 5; i++){
      spaceships.add(new Spaceship(positionX, positionY));
      positionX+= 40;
    } 
  }
  public void hyperspace(){
    spaceships.clear(); //deletes the fleets
    initialize((int)(Math.random()*400),(int)(Math.random()*400)); //creates the fleets
    double speedY = Math.random();
    double speedX = Math.random();
    for(int i = 0; i < spaceships.size(); i++){
      Spaceship ai = spaceships.get(i);
      ai.setSpeedX(speedX);
      ai.setSpeedY(speedY);
    } 
  }
  public void show(){
    for(int i = 0; i < spaceships.size(); i++){
      spaceships.get(i).show();
    }
  }
}
