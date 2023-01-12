Rocket tHansen = new Rocket2();
Rocket harald = new Rocket2();
Rocket2[] batteri = new Rocket2[100];


void setup() {
  size(800, 800);
  noStroke();
  for(int i=0;i<batteri.length;i++){
    batteri[i] = new Rocket2();
  }
  
}
void draw() {
  background(205);

 tHansen.controller();
 harald.controller();
 if(frameCount>300){
 for(int i=0;i<batteri.length;i++){
   batteri[i].controller();
 }
 }
}
