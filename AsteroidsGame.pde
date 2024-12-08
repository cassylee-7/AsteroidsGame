Star [] night = new Star [250];
Spaceship asher = new Spaceship();
ArrayList <Asteroid> Aster = new ArrayList <Asteroid> ();

public void setup() {
  size(400, 400);
  background(0);
  
  for (int i = 0; i < night.length; i++) 
    night[i] = new Star();

  for (int i = 0; i < 20; i++) 
    Aster.add(i, new Asteroid());
}

public void draw() {
  for (int i = 0; i < night.length; i++) 
    night[i].show();
  
  asher.show();
  asher.move();
  
  for (int i = 0; i < Aster.size(); i++) {
    double l = dist((float)asher.getCenterX(), (float)asher.getCenterY(), (float)Aster.get(i).getCenterX(), (float)Aster.get(i).getCenterY());
  
    if (l > 20) {
      Aster.get(i).show();
      Aster.get(i).move();
    } else {
      Aster.remove(i);
      i--;  
    }
  }
}


public void keyPressed() {
  if (key == 'b') {
    asher.hyperspace();
    //int i;
    //for (i = Aster.size(); i < 20; i++) {
      //Aster.add(i, new Asteroid());
    //}
  }
  if (key == 'a') {
    asher.turn(-10);
    }
  if (key == 'd') {
    asher.turn(10);
  }
  if (key == 'w') {
    asher.accelerate(1);
  }
  if (key == ' ') {
    asher.end();
  }
}
