class Rocket {
  float krut=random(100,400);
  float xPos=0;
  float yPos=800;
  int dia = 10;
  int lunte = 0;
  int alpha=255;
  int r=int(random(255));
  int g=int(random(255));
  int b=int(random(255));
  float angle=random(1,3);

  //ingen konstruktør
  
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
      fill(r, g, b, alpha);
    }
    circle(xPos, yPos, dia);
  }

  void boom() {} // lavet kun til at overwrite
}
//**************** NEDARVNING ***********************/
class Rocket2 extends Rocket{
  void boom() {
    dia++;
    alpha--;
  }
}


class Rocket3 extends Rocket{
  void boom() {
    //SKRIV DIN KODE HER

  }
}
