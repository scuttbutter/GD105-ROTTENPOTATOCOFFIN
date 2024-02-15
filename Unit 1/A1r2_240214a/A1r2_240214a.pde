// i wont even lie i hate this sm 
// i just need to get this one over with
// painting:https://www.artsy.net/artwork/piet-mondrian-komposition-ii-with-red-1926

void setup() {
  size(800, 800);
  background(255,255,255); // White background
}

void draw() {
   background(222,222,222);
   // the singular rectangle
  noStroke();
  rect(0,780,195,35);
  fill(169,38,38);
  
  // Vertical lines
  stroke(0); // Black color
  strokeWeight(20); // Line thickness
  line(0,163,width,163);
  line(0,770,width,770);
  line(200,0,200,800);
  line(800,170,800,770);
}
