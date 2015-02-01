// Icebreakers by Christie Lo and Cherry Vong
// reservations page

PFont CnL;
PFont Helvetica;

PImage phone;
PImage pulloutmenu;
PImage phoneshell;

String[] month = new String[12]; // decalre 12 months

float size = 20; // size of ellipse
float spacing = 30;

float px; 
float py;
boolean menu;
boolean toggle; 


void setup() {
  month[0] = "January";
  month[1] = "February";
  month[2] = "March";
  month[3] = "April";
  month[4] = "May";
  month[5] = "June";
  month[6] = "July";
  month[7] = "August";
  month[8] = "September";
  month[9] = "October";
  month[10] = "November";
  month[11] = "December";

    //load image 
  phone = loadImage( "oiphone.png" );
  pulloutmenu = loadImage( "pulloutmenu.jpg" );
  phoneshell = loadImage( "phoneshell.png");
    size(phone.width, phone.height);
  background(255); //white
  colorMode(HSB, 360, 100, 100, 100);

  CnL= createFont("Champagne&Limousines-Bold", 15);
  Helvetica = createFont("Helvetica-Light", 15);
}


void draw() {
  image(phone, 0, 0);

  textFont(CnL);
  textSize(33);
  textAlign(CENTER);
  fill(0, 0, 39);
  text("Reservations", phone.width/2, 180); 

  if (mouseX>80 && mouseY>240 && mouseX<90 && mouseY<250) {
    fill(41, 36, 99);
  } else {
    fill(0, 0, 39);
    triangle(80, 245, 
    90, 240, 
    90, 250);
  }

  if (mouseX>phone.width && mouseY>240 && mouseX<80 && mouseY<90) {
    fill(41, 36, 99);
  } else {
    fill(0, 0, 39);
    triangle(phone.width - 80, 245, 
    phone.width - 90, 240, 
    phone.width - 90, 250);
  }

  circle(54, 285);

  //hit test for rectangle
  if (mousePressed && (mouseX > 50) && (mouseY > phone.height - 150) && (mouseX < 85) 
    && (mouseY < phone.height - 115)) {
    fill(42, 63, 100); // yellow
  } else { 
    fill(0, 0, 79);
  }

  rect(50, phone.height - 150, 35, 35, 7);

  fill(0, 0, 39);
  textSize(25);
  text("+", 68, height-124);

  textFont(Helvetica);
  textSize(18);
  textAlign(CENTER);
  fill(0, 0, 39);
  text("New Reservation", phone.width/2 + 20, phone.height - 128);
  
  
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


void circle(float px, float py) {
  for (int i = 0; i < 7; i++) {
    for (int j = 0; j < 4; j++) {
      noStroke();
      fill(42, 63, 100);
      ellipse(px + (i * spacing), py + (j * spacing), size, size);
    }
  }
}

