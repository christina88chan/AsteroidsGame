Spaceship[] fleet = new Spaceship[3];
Star [] sue;
ArrayList <Asteroid> asteroids = new ArrayList<Asteroid>();
public void setup(){
  size(400,400);
  sue  = new Star[150];
  for(int i = 0; i < sue.length; i++){
  sue[i] = new Star();
  }
  for(int i = 0; i < 6; i++){
      asteroids.add(new Asteroid());
  }
  for(int i = 0; i < fleet.length; i++){
    fleet[i] = new Spaceship();
  }
  fleet[0].setCenterX(fleet[0].getCenterX());
  fleet[1].setCenterX(fleet[0].getCenterX()+25);
  fleet[2].setCenterX(fleet[0].getCenterX()-25);
  fleet[0].setCenterY(fleet[0].getCenterY());
  fleet[1].setCenterY(fleet[0].getCenterY()+30);
  fleet[2].setCenterY(fleet[0].getCenterY()+30);
}

public void draw(){
  background(0);
  for(int i = 0; i < sue.length; i++){
     sue[i].show();
  }
  for(int i = 0; i < asteroids.size(); i++){
      asteroids.get(i).move();
      asteroids.get(i).show();
  }
  for(int i = 0; i < fleet.length; i++){
    fleet[i].move();
    fleet[i].show();
  }
 }

  public void keyPressed(){
   if(key == 'a'){
    for(int i = 0; i < fleet.length; i++){
    fleet[i].turn(-8);
    }
   }
   if(key == 'd'){
     for(int i = 0; i < fleet.length; i++){
    fleet[i].turn(8);
    } 
   }
   if(key == 'w'){
    for(int i = 0; i < fleet.length; i++){
    fleet[i].accelerate(0.5);
    } 
   }
   if(key == 's'){
    for(int i = 0; i < fleet.length; i++){
    fleet[i].accelerate(-0.5);
    } 
   }
   if(key == ' '){
     for(int i = 0; i < fleet.length; i++){
     fleet[0].setCenterX((int)(Math.random()*400));
     fleet[1].setCenterX(fleet[0].getCenterX()+25);
     fleet[2].setCenterX(fleet[0].getCenterX()-25);
     fleet[0].setCenterY((int)(Math.random()*400));
     fleet[1].setCenterY(fleet[0].getCenterY()+30);
     fleet[2].setCenterY(fleet[0].getCenterY()+30);
     fleet[i].setSpeedX(1);
     fleet[i].setSpeedY(1);
     }
   }
}
