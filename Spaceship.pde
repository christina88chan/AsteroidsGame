class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 4; 
    xCorners = new int [] {20, -10, -5, -10};
    yCorners = new int []{0, 10, 0, -10};
    myFillColor = color(191, 187, 214);
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0; 
    myYspeed = 0;
    myPointDirection = 270;
  }
  public void setCenterX(int n){myCenterX = n;}
  public int getX() {return (int)myCenterX;}
  public void setCenterY(int m){myCenterY = m;}
  public int getY() {return (int)myCenterY;}
  public void setSpeedX(double b){myXspeed = b;}
  public void setSpeedY(double d){myYspeed = d;}
  public int getSpeedX(){return (int)myXspeed;}
  public int getSpeedY(){return (int)myYspeed;}
  public double getPointDirection(){return myPointDirection;}
}
