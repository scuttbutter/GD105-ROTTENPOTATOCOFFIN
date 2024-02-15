PFont customFont;

void setup() {
  size(800, 400);
  background(255, 0, 0); // Red background

}

void draw() {
 background(229, 59, 59); // Red background
 
  // Load the "Acidic.ttf" font
  customFont = createFont("Acidic.TTF", 48);
  textFont(customFont);
  textAlign(CENTER, CENTER);
  
  // Draw the text
  fill(0); // Set text color to black
  float textWidth = textWidth("abuse of power comes as no surprise"); // Calculate text width
  float scaleFactor = min(width * 0.8 / textWidth, height * 0.8 / textAscent()); // Calculate scale factor to fit text within screen
  textSize(48 * scaleFactor); // Set text size based on scale factor
  text("abuse of power comes as no surprise", width/2, height/2);
  
   // Draw the text
  fill(0); // Set text color to black
  float textWidth = textWidth("abuse of power comes as no surprise"); // Calculate text width
  float scaleFactor = min(width * 0.8 / textWidth, height * 0.8 / textAscent()); // Calculate scale factor to fit text within screen
  textSize(48 * scaleFactor); // Set text size based on scale factor
  text("abuse of power comes as no surprise", width/2, height/2);
}
