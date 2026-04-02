color blue = #0000FF;
color lightBlue = #1E90FF;
color lightestBlue = #82CAFF;
color selectedColor;
color white = #FFFFFF;
color black = (0);



void setup() {
  size(800, 800);
  background(#C95CEA);
  selectedColor = blue;
}

void draw() {
  strokeWeight(1.5);

  //blue button
  fill(blue);
  stroke(black);
  rect(600, 200, 150, 80);

  //lightbluebutton
  fill(lightBlue);
  rect(600, 400, 150, 80);

  //lightestblue button
  fill(lightestBlue);
  rect(600, 600, 150, 80);

  //indiactor

  fill(selectedColor);
  square(100, 200, 400);
}

void mouseReleased() {
  if (mouseX > 600 && mouseX < 750 && mouseY > 200 && mouseY < 280) {
    selectedColor = blue;
  }

  if (mouseX > 600 && mouseX < 750 && mouseY > 400 && mouseY < 480) {
    selectedColor = lightBlue;
  }

  if (mouseX > 600 && mouseX < 750 && mouseY > 600 && mouseY < 680) {
    selectedColor = lightestBlue;
  }
}
