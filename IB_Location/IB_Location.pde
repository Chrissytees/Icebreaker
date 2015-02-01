// Icebreakers by Christie Lo and Cherry Vong
// location page

import controlP5.*;

ControlP5 cp5;

PFont CnL;
PFont Helvetica;

PImage phone;
PImage ios;

RadioButton location; // 4 radio button locations

Textfield customLoc; // textfiel input location

boolean proceed = false;


void setup() {
  phone = loadImage("phone.png");
  ios = loadImage("checkIn.jpg");
  size(phone.width, phone.height);
  colorMode(HSB, 360, 100, 100, 100); 

  CnL= createFont("Champagne&Limousines-Bold", 15);

  cp5 = new ControlP5(this);
  Helvetica = createFont("Helvetica-Light", 15);
  cp5.setControlFont(Helvetica);

  // add a textfield for user to input current location
  // if their location is not one of the options
  customLoc = cp5.addTextfield("Enter you location")
    .setPosition(62, height - 185)
      .setSize(100, 22)
       .setColor(color(0, 0, 39))
          .setColorForeground(color(0, 0, 100))
            .setColorActive(color(42, 63, 100))
              .setColorBackground(color(0, 0, 95))
              .setText("Other")
                .setAutoClear(true);

  // add 4 radio buttons (location 1, 2, 3 + other)
  location = cp5.addRadioButton("Locations")
    .setPosition(50, height/2 - 30)
      .setSize(10, 10)
          .setColorForeground(color(42, 63, 100))
            .setColorActive(color(42, 63, 100))
              .setColorBackground(color(0, 0, 95))
                .setColorLabel(color(0, 0, 39))
                  .setItemsPerRow(1)
                    .setSpacingRow(35)
                      .addItem("The Works", 1)
                        .addItem("Honey Bake Shop", 2)
                          .addItem("Starbucks", 3)
                            .addItem(" ", 4);
}


void draw() {
  image(phone, 0, 0);

  textFont(CnL);
  textSize(29);
  textAlign(CENTER);
  fill(0, 0, 39);
  text("Where are you?", phone.width/2, 190); 

  if ( location.value() == 1 || location.value() == 2 || 
    location.value() == 3) {
    proceed = true;
  }

  if (proceed) {

    image(ios, 0, 0, phone.width, phone.height);
    cp5.hide();
  }
}


void controlEvent(ControlEvent ev) {
  if (ev.isFrom(customLoc)) {
    proceed = true;
  }
}

