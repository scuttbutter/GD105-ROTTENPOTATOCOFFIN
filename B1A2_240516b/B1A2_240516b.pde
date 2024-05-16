import processing.svg.*;

void setup() {
  size(584, 384);
  smooth();
  noFill();
  background(255);
  drawMoriepiece();

  //starting the svg file
  beginRecord(SVG, "MoirepieceReal.svg");
  drawMoriepiece();
  endRecord();
}

void drawMoriepiece() {
  float maxRadius = 120;
  float numSquares = 100;

  for (int i = 0; i < numSquares; i++) {
    float radius = maxRadius;
    float x = width / 2 + cos(TWO_PI / numSquares * i) * 50;
    float y = height / 2 + sin(TWO_PI / numSquares * i) * 50;
    rectMode(CENTER);
    rect(x, y, radius * 2, radius * 2);
    circle(x, y, radius);
  }
}
