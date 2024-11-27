Star [] night = new Star [250];
Floater [] piece = new Floater [50];
Spaceship asher = new Spaceship();

public void setup() {
  size(400, 400);
  
  for (int i = 0; i < night.length; i++) 
    night[i] = new Star();
  
  for (int i = 0; i < piece.length; i++) 
    piece[i] = new Floater();
    

}

public void draw() {
  background(0);
  for (int i = 0; i < night.length; i++) {
    night[i].show();
  }
  asher.show();

}

public void keyPressed() {
  if (key == 'b') {
    asher.hyperspace();
  }
  if (key == 'a') {
    asher.turnLeft();
    }
  if (key == 'd') {
    asher.turnRight();
  }
  if (key == 'w') {
    asher.accelerate(1);
    asher.move();
  }
}
