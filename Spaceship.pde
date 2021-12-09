 class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 4; 
    xCorners = new int [] {20, -10, -5, -10};
    yCorners = new int []{0, 10, 0, -10};
    myFillColor = color(191, 187, 214);
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 1; 
    myYspeed = 1;
    myPointDirection = 270;
  }
  public void setCenterX(int n){myCenterX = n;}
  public int getCenterX() {return (int)myCenterX;}
  public void setCenterY(int m){myCenterY = m;}
  public int getCenterY() {return (int)myCenterY;}
  public void setSpeedX(double b){myXspeed = b;}
  public void setSpeedY(double d){myYspeed = d;}
}
