class Star //note that this class does NOT extend Floater
{
 private int myX, myY, myColor;
 public Star(){
   myX = (int)(Math.random()*400);
   myY = (int)(Math.random()*400);
   myColor = color(255, 213, 0);
   //myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 }
 public void show(){
   noStroke();
   fill(myColor);
   ellipse(myX, myY, 2, 2);
 }
}
