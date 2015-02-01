// Icebreakers by Christie Lo and Cherry Vong
// font code

PFont CnL;

PFont Helvetica;

void setup() {
  size(200, 200);
  
  CnL = createFont("Champagne&Limousines-Bold", 32);
  textFont(CnL);
  textAlign(CENTER, CENTER);
  text("!@#$%g", width/2, height/2);
  
  Helvetica = createFont("Helvetica-Light", 32);
  textFont(Helvetica);
  textAlign(CENTER, CENTER);
  text("gggg", width/2, 160);
}

