color selectedColor;
color black = #000000;
color white = #FFFFFF;
color blue = #0000FF;
color red = #FF0000;
color green = #00FF00;
color orange = #FFA500;
color yellow = #FFFF00;
color purple = #800080;
color brown = #964B00;
float sliderX;
float thickness;
PImage duck;
boolean duckOn;

void setup() {
  size(1920, 1080);
  background(255);
  selectedColor = black;
  sliderX = 100;
  duck = loadImage("duck.png");
  duckOn = false;
}

void draw() {
  //toolbar
  fill(#482212);
  stroke(#482212);
  strokeWeight(1);
  rect(0, 0, 400, 1500);
  strokeWeight(2);

  //buttons
  fill(red);
  tactile(100, 100, 70);
  circle(100, 100, 70);

  fill(orange);
  tactile(200, 100, 70);
  circle(200, 100, 70);

  fill(yellow);
  tactile(300, 100, 70);
  circle(300, 100, 70);

  fill(green);
  tactile(100, 200, 70);
  circle(100, 200, 70);

  fill(blue);
  tactile(200, 200, 70);
  circle(200, 200, 70);

  fill(purple);
  tactile(300, 200, 70);
  circle(300, 200, 70);

  fill(brown);
  tactile(100, 300, 70);
  circle(100, 300, 70);

  fill(black);
  tactile(200, 300, 70);
  circle(200, 300, 70);

  //thickness slider c
  stroke(black);
  line(50, 550, 350, 550);
  circle(sliderX, 550, 40);

  //indicator
  stroke(black);
  fill(selectedColor);
  rect(200, 375, 125, 80);

  // eraser
  if (mouseX > 273 && mouseX < 323 && mouseY > 263 && mouseY < 333) {
    stroke(white);
  } else {
    stroke(black);
  }
  fill(#F588E8);
  rect(273, 263, 50, 70);
  fill(white);
  rect(273, 285, 50, 50);

  //text
  textSize(18);
  fill(white);
  text("Current Colour:", 50, 425);
  text("Brush Thickness:", 135, 520);

  //stamp
  fill(white);
  noStroke();
  rect(50, 610, 100, 100);
  duckOnOff();
  image(duck, 50, 610, 100, 100);
  
  
} //END OF DRAW ===================================================================================

void mouseReleased() {
  //red button
  if (dist(100, 100, mouseX, mouseY) < 35) {
    selectedColor = red;
  }

  if (dist(200, 100, mouseX, mouseY) < 35) {
    selectedColor = orange;
  }

  if (dist(300, 100, mouseX, mouseY) < 35) {
    selectedColor = yellow;
  }

  if (dist(100, 200, mouseX, mouseY) < 35) {
    selectedColor = green;
  }

  if (dist(200, 200, mouseX, mouseY) < 35) {
    selectedColor = blue;
  }

  if (dist(300, 200, mouseX, mouseY) < 35) {
    selectedColor = purple;
  }

  if (dist(100, 300, mouseX, mouseY) < 35) {
    selectedColor = brown;
  }

  if (dist(200, 300, mouseX, mouseY) < 35) {
    selectedColor = black;
  }

  if (mouseX > 273 && mouseX < 323 && mouseY > 263 && mouseY < 333) {
    selectedColor = white;
  }

  //duck stamp
  if (mouseX > 50 && mouseX < 150 && mouseY > 510 && mouseY > 610) {
    duckOn = !duckOn; }

}

void mouseDragged() {
  if (mouseX > 400) {
    stroke(selectedColor);
    strokeWeight(thickness);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }

  if (mouseX > 50 && mouseX < 350 && mouseY > 500 && mouseY < 600) {
    sliderX = mouseX;
  }
  thickness = sliderX;
  thickness = map(sliderX, 50, 350, 0.4, 100);

}


void tactile(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r/2) {
    stroke(white);
  } else {
    stroke(black);
  }
}

void duckOnOff() {
  if (duckOn == true) {
    stroke(255, 0, 0);
    strokeWeight(5); }
    else {
      stroke(0);
      strokeWeight(1); }
}
