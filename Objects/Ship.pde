class Ship {
  color c;
  float xPos;
  float yPos;
  boolean left;
  boolean right;
  boolean up;
  boolean down;
  Ship() {
    c = color(255);
    xPos =450;
    yPos=500;
    left=false;
    right=false;
    up=false;
    down=false;
  }

  void display() {
    stroke(c);
    if (left) {
      xPos=xPos - 3;
    }
    if (right) {
      xPos=xPos + 3;
    } else {
      if (up) {
        yPos=yPos - 3;
      }
      if (down) {
        yPos=yPos + 3;
      }
    }

    beginShape(); 
    vertex(xPos-10, yPos-10);
    vertex(xPos, yPos-15);
    vertex(xPos+10, yPos-10);
    vertex(xPos, yPos-40);
    endShape(CLOSE);
    loop();
    if (yPos>550) {
      yPos=550;
    }
    if (xPos>800) {
      xPos=800;
    }
    if (yPos<500) {
      yPos=500;
    }
    if (xPos<100) {
      xPos=100;
    }
  }
  void move() {
    if (keyPressed) {
      if (key=='w') {
        up=true;
        down=false;
        right=false;
        left=false;
      } 
      if (key=='s') {
        down=true;
        up=false;
        right=false;
        left=false;
      }
      if (key=='a') {
        left=true;
        right=false;
        up=false;
        down=false;
      }
      if (key=='d') {
        right=true;
        left=false;
        up=false;
        down=false;
      }
    }
  }
  //void keyReleased() {
  //  if (key=='w') {
  //    up=false;
  //  }
  //  if (key=='s') {
  //    down=false;
  //  }
  //  if (key=='a') {
  //    left=false;
  //  }
  //  if (key=='d') {
  //    right=false;
  //  }
  //}
}
