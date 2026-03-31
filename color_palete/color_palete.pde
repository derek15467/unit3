
color blue = #0000FF;
color lightBlue = #1E90FF;
color lightestBlue = #82CAFF;
color selectedColor;
color white = #FFFFFF;

void setup() {
  size(800, 800);
  selectedColor = blue;
}

void draw() {
  background(#2BE0BD);
  strokeWeight(2);
  //buttons
  
      if (dist(150, 200, mouseX, mouseY) < 50)
  {
    stroke(white);
  } else {
    stroke(blue);
  }
  
  fill(blue);
  circle(150, 200, 100);

      if (dist(150, 400, mouseX, mouseY) < 50)
  {
    stroke(white);
  } else {
    stroke(blue);
  }
  
  fill(lightBlue);
  circle(150, 400, 100);

      if (dist(150, 600, mouseX, mouseY) < 50)
  {
    stroke(white);
  } else {
    stroke(blue);
  }
  
  
  fill(lightestBlue);
  circle(150, 600, 100);


  stroke(blue);
  
  //indicator
  fill(selectedColor);
  square(300, 200, 400);


}

void mouseReleased() {
  //blue button
  if (dist(150, 200, mouseX, mouseY) < 50) {
    selectedColor = blue;
  }

  //lightblue button
  if (dist(150, 400, mouseX, mouseY) < 50) {
    selectedColor = lightBlue;
  }

  //lightestblue botton
  if (dist(150, 600, mouseX, mouseY) < 50) {
    selectedColor = lightestBlue;
  }
}
