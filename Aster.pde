class Asteroid extends Floater {
  private double rotateSpeed;
  public Asteroid() {
    corners = 6;
    xCorners = new int [] {-11, 7, 13, 6, -11, -5};
    yCorners = new int [] {-8, -8, 0, 10, 8, 0};
    myColor = color(255, 255, 255);
    myCenterX = (int)(Math.random()*400);
    myCenterY = (int)(Math.random()*400);
    myXspeed = (Math.random()*10) - 5;
    myYspeed = (Math.random()*10) - 5;
    rotateSpeed = (Math.random()*16) - 8;
  }
  
  public double getrotateSpeed() {
    return rotateSpeed;
  }
  
  public double getCenterX() {
    return myCenterX;
  }
  
  public double getCenterY() {
    return myCenterY;
  }
  
  public void move() {
    turn(getrotateSpeed());
    super.move();
  }
  
}
