int numLines = 100; // Number of lines
float lineSpacing = 25; // Spacing between lines
float speed = 2; // Speed of animation

void setup() {
  size(600, 600);
  smooth();
}

void draw() {
  background(135,40,40);
  
  // Draw lines from the left side
  for (int i = 0; i < numLines; i++) {
    float y = i * lineSpacing; // Calculate y coordinate of line
    stroke(0);
    strokeWeight(5);
    line(600, 593, 0, y); // Draw line
  }

  // Draw lines from the right side
  for (int i = 0; i < numLines; i++) {
    float y = i * lineSpacing; // Calculate y coordinate of line
    stroke(0);
    strokeWeight(5);
    line(0, 603, 600, y); // Draw line
  }

  // Draw lines from the top
  for (int i = 0; i < numLines; i++) {
    float x = i * lineSpacing; // Calculate x coordinate of line
    stroke(0);
    strokeWeight(5);
    line(x, 602, 0, 2); // Draw line
  }
    // Draw lines from the top
  for (int i = 0; i < numLines; i++) {
    float x = i * lineSpacing; // Calculate x coordinate of line
    stroke(0);
    strokeWeight(5);
    line(x, 1, 581, 135); // Draw line
  }
  
  // Update animation
  lineSpacing += speed;
  
  // Reset animation when lines go off-screen
  if (lineSpacing > 200) {
    speed= -2;
  }
  //
  if (lineSpacing < 30) {
     speed= 2;
  }
  println(lineSpacing );
}
