//GAMES CATEGORY for ICE BREAKER

//# CoffeeScript
//# Assuming all the dependancies are already loaded
//resizeSketches = ->
//canvas = $ 
//# We're using backticks here so that these get set globally
//    `jswidth = $(window).width()`
//    `jsheight = $(window).height()`
//    canvas.attr 'width', jswidth
//    canvas.attr 'height', jsheight
//    sketch = Processing.getInstanceById 'id_of_the_canvas_el'
//    if sketch == undefined
//        # We need the html element and the sketch to run on it
//        # I'm using a compiled processing js sketch called triangles
//new Proocessing $("#id_of_the_canvas_el")[0], triangles
//else
//# This is a function I wrote on the sketch to redraw itself
//# It's different than the builtin processing redraw method 
//        sketch.restart()
//    
//# Somewhere in you code
//$(window).on 'resize', resizeSketches


PImage iphone;
PFont CnL;
PImage pulloutmenu;
PImage phoneshell;

boolean menu;
boolean toggle;

float mouseDist = 0;
float r = 40;

void setup() {
  //load image 
  iphone = loadImage( "oiphone.png" );
  pulloutmenu = loadImage( "pulloutmenu1.jpg" );
  phoneshell = loadImage( "phoneshell.png");

  CnL = createFont("Champagne&Limousines-Bold", 20);
  textFont(CnL);
  textAlign(CENTER, CENTER);

  size(iphone.width, iphone.height);
  background(255); //white
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {

  CnL = createFont("Champagne&Limousines-Bold", 24);
  textFont(CnL);
  textAlign(CENTER, CENTER);
  image(iphone, 0, 0);
  fill(0, 0, 39);
  text("Games Category", iphone.width/2, iphone.height/2-110);

  //four circle categories
  CnL = createFont("Champagne&Limousines-Bold", 20);
  textFont(CnL);
  textAlign(CENTER, CENTER);

  noStroke();
    mouseDist = dist(iphone.width/2 - 50, iphone.height/2 - 30, mouseX, mouseY); 
  if (mouseDist < r) {
    // if mouse is inside circle    
    fill( 0, 0, 79);
    if (mousePressed) {
      fill( 0, 0, 79);
    }
  } else {
  fill(42, 63, 100); // darker yellow
  }
  ellipse( iphone.width/2 - 50, iphone.height/2 - 30, 80, 80);
  fill(0, 0, 39);
  text("First", iphone.width/2 - 50, iphone.height/2-45);
  text("Date", iphone.width/2 - 50, iphone.height/2-20);

  noStroke();
    mouseDist = dist(iphone.width/2 - 50, iphone.height/2 + 70, mouseX, mouseY); 
  if (mouseDist < r) {
    // if mouse is inside circle    
    fill( 0, 0, 79);
    if (mousePressed) {
      fill( 0, 0, 79);
    }
  } else {
  fill(41, 36, 99); // lighter yellow
  }
  ellipse( iphone.width/2 - 50, iphone.height/2 + 70, 80, 80);
  fill(0, 0, 39);
  text("Friends", iphone.width/2 - 50, iphone.height/2+65);

  noStroke();
    mouseDist = dist(iphone.width/2 + 50, iphone.height/2 - 30, mouseX, mouseY); 
  if (mouseDist < r) {
    // if mouse is inside circle    
    fill( 0, 0, 79);
    if (mousePressed) {
      fill( 0, 0, 79);
    }
  } else {
  fill(41, 36, 99); // lighter yellow
  }
  ellipse( iphone.width/2 + 50, iphone.height/2 - 30, 80, 80);
  fill(0, 0, 39);
  text("Co-", iphone.width/2 + 50, iphone.height/2-45);
  text("workers", iphone.width/2 + 50, iphone.height/2-20);

  noStroke();
    mouseDist = dist(iphone.width/2 + 50, iphone.height/2 + 70, mouseX, mouseY); 
  if (mouseDist < r) {
    // if mouse is inside circle    
    fill( 0, 0, 79);
    if (mousePressed) {
      fill( 0, 0, 79);
    }
  } else {
  fill(42, 63, 100); // darker yellow
  }
  ellipse( iphone.width/2 + 50, iphone.height/2 + 70, 80, 80);
  fill(0, 0, 39);
  CnL = createFont("Champagne&Limousines-Bold", 14);
  textFont(CnL);
  textAlign(CENTER, CENTER);
  text("Awkward", iphone.width/2 + 50, iphone.height/2+50);
  text("Family", iphone.width/2 + 50, iphone.height/2+65);
  text("Gatherings", iphone.width/2 + 50, iphone.height/2+80);

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

