class Star {
  private int myX, myY;
  public Star() {
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
  }
 
  public void show() {
    noStroke();
    fill(color((int)(Math.random()*100) + 50, (int)(Math.random()*100) + 50, (int)(Math.random()*100) + 50));
    ellipse(myX, myY, 3, 3);
  }
}
