PGraphics pg;
PImage dots;
float angle = 0;
int frameCount= 350; // Number of frames
int numShapes = 8; // Number of shapes
float radius = 100; // Radius of the circular motion

void setup() {
  size(400, 400);
  frameRate(24); // Set frame rate
  //dots = loadImage("hehe.png");
  pg = createGraphics(width, height);
  dots = loadImage("hehe2.png");
}

void draw() {
  background(0, 0, 0);
  pg.beginDraw();
  pg.background(0, 0, 0);
  pg.noStroke();
  pg.translate(width/2, height/2); // Translate origin to center
  pg.fill(250,156,216); // Random fill color
  pg.rectMode(CENTER);
  // Loop through each shape
  for (int i = 0; i < numShapes; i++) {
    float x = cos(radians(angle + i * 360 / numShapes)) * radius;
    float y = sin(radians(angle + i * 360 / numShapes)) * radius;

    // Draw the shape
    pg.pushMatrix();
    pg.translate(x, y);
    pg.rotate(radians(angle * (i + 1)));
    pg.square(0, 0,50);
    //pg.circle(0, 0, frameCount);
    pg.popMatrix();
  }
  pg.endDraw();

  // Increment angle for the next frame
  angle += 360 / frameCount;

  // If the animation completes one full rotation, reset angle
  if (angle >= 360) {
    angle = 0;
  }

  // Save the frame if it's the last frame
  //if (frameCount == frameCount-1) {
  //  saveFrame("looping.gif");
  //}
  //image(dots,-303,-179);
  pg.mask(dots);
  image(pg, 0, 0);
}
