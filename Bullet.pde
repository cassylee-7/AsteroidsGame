class Bullet extends Floater {
  public Bullet (Spaceship asher) {
    myCenterX = asher.getCenterX();
    myCenterY = asher.getCenterY();
    myXspeed = asher.getXspeed();
    myYspeed = asher.getYspeed();
    myPointDirection = asher.getPointDirect();
    
    accelerate(9);
  }

  public void show() {
    noStroke();
    fill(color(255, 255, 255));
    ellipse((float)myCenterX, (float)myCenterY, 3, 3);
  }


  public double getCenterX() {
    return myCenterX;
  }
  
  public double getCenterY() {
    return myCenterY;
  }   
}
