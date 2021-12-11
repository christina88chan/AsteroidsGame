Spaceship lisha; 
Star [] sue;
ArrayList <Bullet> shots = new ArrayList<Bullet>();
ArrayList <Asteroid> asteroids = new ArrayList<Asteroid>();
public void setup(){
  size(400,400);
  lisha = new Spaceship();
  sue  = new Star[150];
  for(int i = 0; i < sue.length; i++){
  sue[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
      asteroids.add(new Asteroid());
  }
}

public void draw(){
  background(0);
  lisha.move();
  lisha.show();
  for(int i = 0; i < sue.length; i++){
     sue[i].show();
  }
  for(int i = 0; i < asteroids.size(); i++){
      asteroids.get(i).move();
      asteroids.get(i).show();
      float d = dist(lisha.getX(), lisha.getY(), asteroids.get(i).getX(), asteroids.get(i).getX());
      if(d < 5)
        asteroids.remove(i);
  }
    for(int i = 0; i < shots.size(); i++){
      shots.get(i).move();
      shots.get(i).show();
    }
 }

  public void keyPressed(){
   if(key == 'a'){
    lisha.turn(-10);
   }
   if(key == 'd'){
    lisha.turn(10);
   }
   if(key == 'w'){
    lisha.accelerate(2);
   }
   if(key == 's'){
    lisha.accelerate(-2);
   }
   if(key == ' '){
     shots.add(new Bullet(lisha));
   }
}
