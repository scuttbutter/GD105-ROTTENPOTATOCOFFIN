void setup() {
  size(800, 800);
  background(255); // White background
}

void draw() {
   // Vertical lines
  stroke(0); // Black color
  strokeWeight(15); // Line thickness
  
  rect(0,762,195,35);
  fill(169,38,38);
  
  // Vertical lines
  stroke(0); // Black color
  strokeWeight(20); // Line thickness
  line(0,163,width,163);
  line(0,770,width,770);
  line(200,0,200,800);
  line(800,170,800,770);
}
