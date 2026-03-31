
color blue = #0000FF;
color lightBlue = #1E90FF;
color lightestBlue = #82CAFF;
color selectedColor;

void setup() {
  size(800, 800);
  selectedColor = blue;
}

void draw() {
 background(255);
 
 //buttons
 fill(blue);
 circle(150, 200, 100);
 
 fill(lightBlue);
 circle(150, 400, 100);
 
 fill(lightestBlue);
 circle(150, 600, 100);
 
 //indicator
 fill(selectedColor);
 square(300, 200, 400);
 
}

void mouseReleased() {
  //blue button
 if (dist(150, 200, mouseX, mouseY) < 50) {
   selectedColor = blue; }
   
  //lightblue button
  
  //lightestblue botton
}
