// Icebreakers by Christie Lo and Cherry Vong
// location page

import controlP5.*;

ControlP5 cp5;

PFont CnL;
PFont Helvetica;

PImage phone;

Textfield title;
Textfield with;
Textfield where;
Textfield when;
Textfield time;
Textfield reminder;
Textfield notes;

RadioButton alert;



void setup() {
  phone = loadImage("phone.png");
  size(phone.width, phone.height);
  colorMode(HSB, 360, 100, 100, 100); 

  CnL= createFont("Champagne&Limousines-Bold", 15);

  cp5 = new ControlP5(this);
  Helvetica = createFont("Helvetica-Light", 15);
  cp5.setControlFont(Helvetica);


  title = cp5.addTextfield("Title")
    .setPosition(48, 180)
      .setSize(190, 40)
        .setColor(color(0, 0, 39))
          .setColorForeground(color(0, 0, 100))
            .setColorActive(color(42, 63, 100))
              .setColorBackground(color(0, 0, 95))
                .setText("Title")
                  .setAutoClear(false);

  with = cp5.addTextfield("With")
    .setPosition(48, 232)
      .setSize(190, 25)
        .setColor(color(0, 0, 39))
          .setColorForeground(color(0, 0, 100))
            .setColorActive(color(42, 63, 100))
              .setColorBackground(color(0, 0, 95))
                .setText("With...")
                  .setAutoClear(false);

  where = cp5.addTextfield("Where")
    .setPosition(48, 267)
      .setSize(190, 25)
        .setColor(color(0, 0, 39))
          .setColorForeground(color(0, 0, 100))
            .setColorActive(color(42, 63, 100))
              .setColorBackground(color(0, 0, 95))
                .setText("Where?")
                  .setAutoClear(false);

  when = cp5.addTextfield("When")
    .setPosition(48, 300)
      .setSize(190, 25)
        .setColor(color(0, 0, 39))
          .setColorForeground(color(0, 0, 100))
            .setColorActive(color(42, 63, 100))
              .setColorBackground(color(0, 0, 95))
                .setText("When?")
                  .setAutoClear(false);

  time = cp5.addTextfield("Time")
    .setPosition(48, 335)
      .setSize(190, 25)
        .setColor(color(0, 0, 39))
          .setColorForeground(color(0, 0, 100))
            .setColorActive(color(42, 63, 100))
              .setColorBackground(color(0, 0, 95))
                .setText("Time?")
                  .setAutoClear(false);

  reminder = cp5.addTextfield("Reminder")
    .setPosition(48, 370)
      .setSize(190, 25)
        .setColor(color(0, 0, 39))
          .setColorForeground(color(0, 0, 100))
            .setColorActive(color(0, 0, 100))
              .setColorBackground(color(0, 0, 95))
                .setText("Reminder?")
                  .setAutoClear(false);

  notes = cp5.addTextfield("Notes")
    .setPosition(48, 400)
      .setSize(190, 30)
        .setColor(color(0, 0, 39))
          .setColorForeground(color(0, 0, 100))
            .setColorActive(color(0, 0, 100))
              .setColorBackground(color(0, 0, 100))
                .setText("Notes:")
                  .setAutoClear(false);

  // add 2 radio buttons (reminder on/off)
  alert = cp5.addRadioButton("Alert")
    .setPosition(phone.width/2, 378)
      .setSize(10, 10)
        .setColorBackground(color(0, 0, 79))
          .setColorActive(color(42, 63, 100))
            .setColorLabel(color(0, 0, 39))
              .setItemsPerRow(2)
                .setSpacingColumn(40)
                  .addItem("Off", 1)
                    .addItem("On", 2);
}


void draw() {
  image(phone, 0, 0);

  textFont(CnL);
  textSize(29);
  textAlign(CENTER);
  fill(0, 0, 39);
  text("New Reservations", phone.width/2, 158);

  if (circleHitTest(mouseX, mouseY, phone.width - 55, 458, 12)) {
    fill(42, 63, 100);
  } else {
    fill(0, 0, 79);
  }
  
    noStroke();

    ellipse(phone.width - 55, 458, 25, 25);
    fill(0, 0, 36);
    textSize(16);
    text("✓", phone.width - 55, 465);
  } 
  
boolean circleHitTest(float pX, float pY, float cX, float cY, float radius) {
  // calculate distance from pX, pY  to centre of circle
  float d = mydist(pX, pY, cX, cY);

  // if it's less than radius, we have a hit
  if (d < radius) {
    return true;
  } else {
    return false;
  }
} 

// returns the distance between point P at (pX, pY)
// and point Q at (qX, qY)
float mydist(float pX, float pY, float qX, float qY) {
  float a = pX - qX;
  float b = pY - qY;
  float d = sqrt((a * a) + (b * b));  
  return d;
}
