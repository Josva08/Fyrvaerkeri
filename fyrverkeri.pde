// deklarering af raketter
Rocket tHansen = new Rocket2();
Rocket harald = new Rocket2();
// deklarering af batteri
Rocket2[] batteri = new Rocket2[100];


void setup() {
  size(800, 800);
  noStroke();
  // initier batteri
  for (int i=0; i<batteri.length; i++) {
    batteri[i] = new Rocket2();
  }
}
void draw() {
  background(205);

  // skyd raketter af
  tHansen.controller();
  harald.controller();
  
  // fyr batteri af
  if (frameCount>300) {
    for (int i=0; i<batteri.length; i++) {
      batteri[i].controller();
    }
  }
}
