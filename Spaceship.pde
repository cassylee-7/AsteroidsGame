class Spaceship extends Floater {
  public Spaceship () {
    corners = 6;  //the number of corners, a triangular floater has 3   
    xCorners = new int[] {-8, 16, -8, -6, -10, -6};   
    yCorners = new int[] {-8, 0, 8, 4, 0, 4};   
    myColor = color(127, 0, 0);
    myCenterX = 200;
    myCenterY = 200; 
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  
  public void hyperspace() {
    myCenterX = (int)(Math.random()*400);
    myCenterY = (int)(Math.random()*400);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  
  public void turnLeft() {
    translate((float)myCenterX, (float)myCenterY);
    myPointDirection -= 10;
  }
  
  public void turnRight() {
    translate((float)myCenterX, (float)myCenterY);
    myPointDirection += 10;
  }
  
}
