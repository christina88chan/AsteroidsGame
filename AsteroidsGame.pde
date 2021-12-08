Star [] sue; //int[] arr = new int[5];
Fleet fleet = new Fleet(); //one fleet 
ArrayList <Asteroid> asteroids = new ArrayList<Asteroid>();
public void setup(){
  size(400,400);
  sue  = new Star[150];
  for(int i = 0; i < 150; i++){
  sue[i] = new Star();
  }
  
  for(int i = 0; i < 10; i++){
    asteroids.add(new Asteroid()); 
  }
}

public void draw(){
  background(0); 
  for(int i = 0; i < 150; i++){
     sue[i].show();
  }
  for(int i = 0; i < asteroids.size(); i++){
    Asteroid al = asteroids.get(i);
    al.move();
    al.show();
  }
    fleet.move();
    fleet.show();
    if(keyPressed){
    if(key == 'a'){
    fleet.turn(-8);
    } 
    if(key == 'd'){
    fleet.turn(8); 
    }
    if(key == 'w'){
    fleet.accelerate(0.5);
    }
    if(key == ' '){
     fleet.hyperspace();
    }
    }
}

