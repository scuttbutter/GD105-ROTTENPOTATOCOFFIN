float angle = 0;
int frameCount = 120; // Number of frames
int numShapes = 8; // Number of shapes
float radius = 100; // Radius of the circular motion

void setup() {
  size(400, 400);
  frameRate(24); // Set frame rate
}

void draw() {
  background(62, 63, 75);
  translate(width/2, height/2); // Translate origin to center

  // Loop through each shape
  for (int i = 0; i < numShapes; i++) {
    float x = cos(radians(angle + i * 360 / numShapes)) * radius;
    float y = sin(radians(angle + i * 360 / numShapes)) * radius;

    // Draw the shape
    pushMatrix();
    translate(x, y);
    rotate(radians(angle * (i + 1)));
    drawShape();
    popMatrix();
  }

  // Increment angle for the next frame
  angle += 360 / frameCount;

  // If the animation completes one full rotation, reset angle
  if (angle >= 360) {
    angle = 0;
  }

  // Save the frame if it's the last frame
  if (frameCount == frameCount-1) {
    saveFrame("looping.gif");
  }
}

void drawShape() {
  fill(random(255), random(255), random(255)); // Random fill color
  rectMode(CENTER);
  rect(0, 0, 40, 40); // Draw a square
}
