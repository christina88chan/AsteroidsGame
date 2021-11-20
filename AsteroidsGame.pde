Spaceship space;
Star [] sue;
public void setup(){
  size(400,400);
  space = new Spaceship();
  sue  = new Star[250];
  for(int i = 0; i < 150; i++){
  sue[i] = new Star();
  }
}

public void draw(){
  background(0);
  for(int i = 0; i < 150; i++){
     sue[i].show();
  }
  space.move();
  space.show();
  if(keyPressed){
   if(key == 'a'){
    space.turn(-8);
   }
   if(key == 'd'){
    space.turn(8); 
   }
   if(key == 'w'){
    space.accelerate(0.5);
   }
   if(key == ' '){
     space.setCenterX((int)(Math.random()*400));
     space.setCenterY((int)(Math.random()*400));
     space.setSpeedX(0.5);
     space.setSpeedY(0);
   }
}
}
