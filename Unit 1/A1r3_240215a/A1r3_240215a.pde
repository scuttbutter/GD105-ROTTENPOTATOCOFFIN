PFont font;

void setup() {
  size(800, 800);
  background(255);
  
  // Load a font
  font = createFont("1942", 32);
  textFont(font);
  textAlign(CENTER, CENTER);
  
  // Draw the text
  fill(0);
  text("anything is a legitimate area of investigation", width/2, height/2);
  
  // Save the image
  save("legitimate_investigation.png");
}

void draw() {
  // No animation needed, since this is a static image
}
