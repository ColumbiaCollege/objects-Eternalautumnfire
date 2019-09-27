//Objects
// 26 Sept 2019 Jeremiah Wilson

//Ship Object
Ship myShip;

//sets up window and initalizes object
void setup() {
  size(900, 600);
  myShip=new Ship();
}


void draw() {
  background(0);

  //calls methods the object uses
  myShip.move();
  myShip.display();
}
