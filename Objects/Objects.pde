//Objects
// 26 Sept 2019 Jeremiah Wilson

Ship myShip;

void setup() {
  size(900, 600);
  myShip=new Ship();
}

void draw() {
  background(0);
  myShip.move();
  myShip.display();
}
