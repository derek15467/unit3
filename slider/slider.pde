
float sliderY;
float size;

void setup() {
  size(800, 800);
  strokeWeight(2);
  sliderY = 400;
  size = 100;
}

void draw() {
  background(255);
  line(120, 200, 120, 600);
  circle(120, sliderY, 40);
  circle(550, 400, size);
  
}

void mouseDragged() {
  if (mouseY > 200 && mouseY < 600 && mouseX > 100 && mouseX < 140) {
    sliderY = mouseY; }
    size = sliderY;
  
}

void mouseReleased() {
  if (mouseY > 200 && mouseY < 600 && mouseX > 100 && mouseX < 140) {
    sliderY = mouseY; }
    size = sliderY;
    
}
