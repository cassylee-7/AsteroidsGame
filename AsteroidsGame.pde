Star [] night = new Star [250];
Spaceship asher = new Spaceship();
ArrayList <Asteroid> Aster = new ArrayList <Asteroid> ();
ArrayList <Bullet> Bob = new ArrayList <Bullet> ();

public void setup() {
  size(400, 400);
  background(0);
  
  for (int i = 0; i < night.length; i++) 
    night[i] = new Star();

  for (int i = 0; i < 20; i++) {
    Aster.add(i, new Asteroid());
  }
}

public void draw() {
  background(0);
  for (int i = 0; i < night.length; i++) 
    night[i].show();
  
  asher.show();
  asher.move();
  
  for (int i = 0; i < Bob.size(); i++) {
    Bob.get(i).show();
    Bob.get(i).move();
    
    for (int j = 0; j < Aster.size(); j++) {
      double d = dist((float)Bob.get(i).getCenterX(), (float)Bob.get(i).getCenterY(), (float)Aster.get(j).getCenterX(), (float)Aster.get(j).getCenterY());
      
      if (d < 20) {
        Bob.remove(i);
        Aster.remove(j);
        i--;
        break;
      }
    }
  }
  
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
    int i;
    for (i = Aster.size(); i < 20; i++) {
      Aster.add(i, new Asteroid());
    }
  }
  if (key == 'a') {
    asher.turnLeft();
    }
  if (key == 'd') {
    asher.turnRight();
  }
  if (key == 'w') {
    asher.accelerate(1);
  }
  if (key == ' ') {
    asher.end();
  }
  if (key == 'r') {
    Bob.add(new Bullet(asher));
  }
}
