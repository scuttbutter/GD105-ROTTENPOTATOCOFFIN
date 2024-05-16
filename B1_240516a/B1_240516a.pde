import processing.svg.*;
int margin=48;

int numLines = 300; // Number of lines
float lineSpacing = 25; // Spacing between lines
float speed = 0.025; // Speed of animation

void setup() {
  size(1056, 816);
  smooth();
    background(255,255,255);
    
    
}

void draw() {
  // Draw lines from the left side
  for (int i = 0; i < numLines; i++) {
    float y = i * lineSpacing; // Calculate y coordinate of line
    stroke(#000000);
    strokeWeight(1);
    line(600, 593, 0, y); // Draw line
  }
   // Draw lines from the left side
  for (int i = 0; i < numLines; i++) {
    float y = i * lineSpacing; // Calculate y coordinate of line
    stroke(#000000);
    strokeWeight(1);
    line(1070, 562, 0, y); // Draw line
  }

  // Draw lines from the right side
  for (int i = 0; i < numLines; i++) {
    float y = i * lineSpacing; // Calculate y coordinate of line
    stroke(#000000);
    strokeWeight(1);
    line(0, 603, 600, y); // Draw line
  }
   // Draw lines from the right side
  for (int i = 0; i < numLines; i++) {
    float y = i * lineSpacing; // Calculate y coordinate of line
    stroke(#000000);
    strokeWeight(1);
    line(351, 824, 1127, y); // Draw line
  }


  // Draw lines from the top
  for (int i = 0; i < numLines; i++) {
    float x = i * lineSpacing; // Calculate x coordinate of line
    stroke(#000000);
    strokeWeight(1);
    line(x, 602, 0, 2); // Draw line
  }
    // Draw lines from the top
  for (int i = 0; i < numLines; i++) {
    float x = i * lineSpacing; // Calculate x coordinate of line
    stroke(#000000);
    strokeWeight(1);
    line(x + 50, 1, 581, 135); // Draw line
    //rotate(0.0001 * frameCount);
  }

  
 
}
