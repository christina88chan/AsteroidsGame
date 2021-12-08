class Spaceship extends Floater  
{   
  Spaceship(int startingX, int startingY){
    corners = 4; 
    xCorners = new int [] {20, -10, -5, -10};
    yCorners = new int []{0, 10, 0, -10};
    myFillColor = color(191, 187, 214);
    myCenterX = startingX;
    myCenterY = startingY;
    myXspeed = 0.1; 
    myYspeed = 0.1;
    myPointDirection = 270;
  }
  public void setCenterX(int n){
    myCenterX = n;
  }
  public void setCenterY(int m){
    myCenterY = m;  
  }
  public void setSpeedX(double b){
   myXspeed = b;
  }
  public void setSpeedY(double d){
   myYspeed = d;
  }
}
