// Icebreakers by Christie Lo and Cherry Vong
// players page

import controlP5.*;

ControlP5 cp5;

PImage phone;
PImage pulloutmenu;
PImage phoneshell;
PFont CnL;
PFont Helvetica;

boolean menu;
boolean toggle; 

Textfield players; // textfiel input # of players


void setup() {
    //load image 
  phone = loadImage( "oiphone.png" );
  pulloutmenu = loadImage( "pulloutmenu.jpg" );
  phoneshell = loadImage( "phoneshell.png");
    size(phone.width, phone.height);
  background(255); //white
  colorMode(HSB, 360, 100, 100, 100);

  CnL= createFont("Champagne&Limousines-Bold", 15);

  cp5 = new ControlP5(this);
  Helvetica = createFont("Helvetica-Light", 15);
  cp5.setControlFont(Helvetica);

  // add a textfield for user to input current location
  // if their location is not one of the options
  players = cp5.addTextfield(" ")
    .setPosition(95, phone.height/2)
      .setSize(100, 22)
       .setColor(color(0, 0, 39))
          .setColorForeground(color(0, 0, 100))
            .setColorActive(color(42, 63, 100))
              .setColorBackground(color(0, 0, 95))
              .setAutoClear(false);
}

void draw() {
  image(phone, 0, 0);
  textFont(CnL);
  textSize(25);
  textAlign(CENTER);
  fill(0, 0, 39);
  text("How many players?", phone.width/2, phone.height/2 - 30);

    //small opacity button for the menu
  fill(255, 50);
  rect(phone.width/9, phone.height/7, 40, 40);

  if (mousePressed && (mouseX>phone.width/9) && 
    (mouseX<phone.width/9+40) && 
    (mouseY>phone.height/7) && 
    (mouseY<phone.height/7+40)) {
    delay(150);
    if (!toggle)
      toggle = true;
    else 
      toggle = false;
  }
  if (toggle) {
    image(pulloutmenu, phone.width/9, phone.height/7+40);
  }
  
}

