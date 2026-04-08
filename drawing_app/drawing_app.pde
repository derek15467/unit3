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

void setup() {
  size(2000, 2000);
  background(255);
  selectedColor = black;

}

void draw() {
  //toolbar
  fill(#482212);
  stroke(#482212);
  rect(0,0,400,1500);
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
  
// eraser
  fill(#F588E8);
  rect(273, 263, 50, 70);
  fill(white);
  rect(273, 285, 50, 50);
  
  
}



void mouseDragged() {
  stroke(selectedColor);
  line(pmouseX, pmouseY, mouseX, mouseY);
  
}

void tactile(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r/2) {
    stroke(white);
}
  else {
      stroke(black); }
    
}

  
