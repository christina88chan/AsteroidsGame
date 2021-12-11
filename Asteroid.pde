public class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    myStrokeColor = color(255);
    corners = 6; 
    myXspeed = (Math.random()*5)-2.5;
    myYspeed = (Math.random()*5)-2.5; 
    myCenterX = (Math.random()*width);
    myCenterY = (Math.random()*height);
    myPointDirection = (Math.random()*360); 
    xCorners = new int[] {-11, 7, 10, 0, -11,-10};
    yCorners = new int[] {-8, -8, 0, 10, 8, 0}; 
    rotSpeed = 7; 
  }
  public void move(){
    turn(rotSpeed); //when you make changes you have the change and then super.blah blah 
    super.move(); //floater has owns everything 
  }
  public void show(){
   noFill();
   super.show(); 
  }
  public void setCenterX(int x){myCenterX = x;}
  public int getX() {return (int)myCenterX;}
  public void setCenterY(int y){myCenterY = y;}
  public int getY() {return (int)myCenterY;}
}
