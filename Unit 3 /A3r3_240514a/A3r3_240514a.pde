int numLines = 300; // Number of lines
float lineSpacing = 25; // Spacing between lines
float speed = 0.025; // Speed of animation

void setup() {
  size(600, 600);
  smooth();
}

void draw() {
  background(16,83,102);
  // Draw lines from the left side
  for (int i = 0; i < numLines; i++) {
    float y = i * lineSpacing; // Calculate y coordinate of line
    stroke(#04c084);
    strokeWeight(2);
    line(600, 593, 0, y); // Draw line
  }

  // Draw lines from the right side
  for (int i = 0; i < numLines; i++) {
    float y = i * lineSpacing; // Calculate y coordinate of line
    stroke(#04c084);
    strokeWeight(2);
    line(0, 603, 600, y); // Draw line
  }

  // Draw lines from the top
  for (int i = 0; i < numLines; i++) {
    float x = i * lineSpacing; // Calculate x coordinate of line
    stroke(#04c084);
    strokeWeight(2);
    line(x, 602, 0, 2); // Draw line
  }
    // Draw lines from the top
  for (int i = 0; i < numLines; i++) {
    float x = i * lineSpacing; // Calculate x coordinate of line
    stroke(#04c084);
    strokeWeight(2);
    line(x + 50, 1, 581, 135); // Draw line
    //rotate(0.0001 * frameCount);
  }

  
  // Update animation
  lineSpacing += speed;
  
  // Reset animation when lines go off-screen
  if (lineSpacing > 30) {
    speed= -0.025;
  }
  //
  if (lineSpacing < 25) {
     speed= 0.025;
  }
  println(lineSpacing);
}
