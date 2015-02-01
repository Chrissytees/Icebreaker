//First Date Games for ICE BREAKER

PImage iphone;
PFont CnL;
PImage pulloutmenu;
PImage phoneshell;

boolean menu;
boolean toggle;
float mouseDist = 0;
float r = 30;
float image_width = 284;
float image_height = 572;



void setup() {
  //load image 
  /* @pjs preload="oiphone.png"; */
  iphone = loadImage( "oiphone.png" );
  pulloutmenu = loadImage( "pulloutmenu1.jpg" );
  phoneshell = loadImage( "phoneshell.png");

  CnL = createFont("Champagne&Limousines-Bold", 20);
  textFont(CnL);
  textAlign(CENTER, CENTER);

  size(iphone.width, iphone.height);
  // size(284, 572);
  background(255); //white
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  CnL = createFont("Champagne&Limousines-Bold", 24);
  textFont(CnL);
  textAlign(CENTER, CENTER);
  image(iphone, 0, 0);
  fill(0, 0, 39);
  text("First Date", iphone.width/2, iphone.height/2-110);

  //six circle categories
  CnL = createFont("Champagne&Limousines-Bold", 14);
  textFont(CnL);
  textAlign(CENTER, CENTER);

  noStroke();

  mouseDist = dist(width/4, iphone.height/2-8, mouseX, mouseY); 
  if (mouseDist < r) {
    // if mouse is inside circle    
    fill( 0, 0, 79);
    if (mousePressed) {
      fill( 0, 0, 79);
    }
  } else {
    fill(42, 63, 100); // darker yellow
  }
  ellipse( iphone.width/4, iphone.height/2, 60, 60);
  fill(0, 0, 39);
  text("Two lies,", iphone.width/4, iphone.height/2-8);
  text("one truth", iphone.width/4, iphone.height/2+5);


  mouseDist = dist(iphone.width/2, iphone.height/2, mouseX, mouseY); 
  if (mouseDist < r) {
    // if mouse is inside circle    
    fill( 0, 0, 79);
    if (mousePressed) {
      fill( 0, 0, 79);
    }
  } else {
    fill(41, 36, 99); // lighter yellow
  }
  ellipse( iphone.width/2, iphone.height/2, 60, 60);
  fill(0, 0, 39);
  text("Would", iphone.width/2, iphone.height/2-14);
  text("you", iphone.width/2, iphone.height/2-2);
  text("rather", iphone.width/2, iphone.height/2+11);

  mouseDist = dist(iphone.width - iphone.width/4, iphone.height/2, mouseX, mouseY); 
  if (mouseDist < r) {
    // if mouse is inside circle    
    fill( 0, 0, 79);
    if (mousePressed) {
      fill( 0, 0, 79);
    }
  } else {
    fill(42, 63, 100); // darker yellow
  }
  ellipse( iphone.width - iphone.width/4, iphone.height/2, 60, 60);
  fill(0, 0, 39);
  text("Never", iphone.width - iphone.width/4, iphone.height/2-14);
  text("have", iphone.width - iphone.width/4, iphone.height/2-2);
  text("I ever", iphone.width - iphone.width/4, iphone.height/2+11);

  mouseDist = dist(iphone.width/4, iphone.height/2+80, mouseX, mouseY); 
  if (mouseDist < r) {
    // if mouse is inside circle    
    fill( 0, 0, 79);
    if (mousePressed) {
      fill( 0, 0, 79);
    }
  } else {
    fill(41, 36, 99); // lighter yellow
  }
  ellipse( iphone.width/4, iphone.height/2+80, 60, 60);
  fill(0, 0, 39);
  text("Menu,", iphone.width/4, iphone.height/2+72);
  text("rap", iphone.width/4, iphone.height/2+85);

  mouseDist = dist(iphone.width/2, iphone.height/2+80, mouseX, mouseY); 
  if (mouseDist < r) {
    // if mouse is inside circle    
    fill( 0, 0, 79);
    if (mousePressed) {
      fill( 0, 0, 79);
    }
  } else {
    fill(42, 63, 100); // darker yellow
  }
  ellipse( iphone.width/2, iphone.height/2+80, 60, 60);
  fill(0, 0, 39);
  text("Crazy", iphone.width/2, iphone.height/2+66);
  text("new", iphone.width/2, iphone.height/2+78);
  text("dish", iphone.width/2, iphone.height/2+91);

  mouseDist = dist(iphone.width - iphone.width/4, iphone.height/2+80, mouseX, mouseY); 
  if (mouseDist < r) {
    // if mouse is inside circle    
    fill( 0, 0, 79);
    if (mousePressed) {
      fill( 0, 0, 79);
    }
  } else {
    fill(41, 36, 99); // lighter yellow
  }
  ellipse( iphone.width - iphone.width/4, iphone.height/2+80, 60, 60);
  fill(0, 0, 39);
  text("Snoopify", iphone.width - iphone.width/4, iphone.height/2+78);


  //small opacity button for the menu
  fill(255, 50);
  rect(iphone.width/9, iphone.height/7, 40, 40);

  if (mousePressed && (mouseX>iphone.width/9) && 
    (mouseX<iphone.width/9+40) && 
    (mouseY>iphone.height/7) && 
    (mouseY<iphone.height/7+40)) {
    delay(150);
    if (!toggle)
      toggle = true;
    else
      toggle = false;
  }
  if (toggle) {
    image(pulloutmenu, iphone.width/9, iphone.height/7+40);
  }
}

