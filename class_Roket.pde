class Rocket {
  float krut=random(100,400);
  float xPos=0;
  float yPos=800;
  int dia = 10;
  int lunte = 0;
  int alpha=255;
  float angle=random(1,3);

  Rocket() {
  }

  void move() {
    xPos=xPos+angle;
    yPos -=2;
  }

  void controller() {
    if (lunte < frameCount) {
      if (krut>yPos) {
        boom();
      } else {
        move();
      }
      vis();
    }
  }


  void vis() {
    if (yPos>krut) {
      fill(0);
    } else {
      fill(225, 255, 0, alpha);
    }
    circle(xPos, yPos, dia);
  }

  void boom() {
    dia++;
    alpha--;
  }
}
