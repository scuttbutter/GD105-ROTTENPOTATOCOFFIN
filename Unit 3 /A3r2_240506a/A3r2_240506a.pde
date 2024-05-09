int maxLines = 60; // Maximum number of lines to draw
float outerRadius = 200; // Radius of the outer circle
float innerRadius = 150; // Radius of the inner circle
float centerX, centerY; // Center coordinates of the circles
float minuteTickLength = 10; // Length of the ticks for minutes
float hourTickLength = 20; // Length of the ticks for hour

void setup() {
  size(800, 600);
  strokeWeight(5);

  // Calculate center coordinates of the circles
  centerX = width / 2;
  centerY = height / 2;
}

void draw() {
  // Get current time
  int currentHour = hour();
  int currentMinute = minute();

  // Set different colors for AM and PM
  if (currentHour < 12) {
    background(#bae0ca);
    stroke(#4079cf); // Blue for AM
  } else {
    background(#2d2e3b);
    stroke(#fa3792); // Pink for PM
  }

  int hourCool = currentHour % 12;
  if (hourCool == 0) {
    hourCool = 12;
  }

  // Draw lines forming the outer circle for minutes
  strokeWeight(15); // Set stroke weight for minutes
  for (int i = 0; i < currentMinute; i++) {
    float angle = map(i, 0, maxLines - 1, 0, TWO_PI); // Calculate angle for the line
    drawLine(angle - TAU * 0.25, outerRadius, minuteTickLength); // Draw ticks for minutes
  }

  // Set a different color and stroke weight for the ticks representing hours
  strokeWeight(20); // Set stroke weight for hours
   if (currentHour < 12) {
  stroke(#17401d); // green for AM
   } else {
     stroke(#74d47b);
       }

  // Draw lines forming the inner circle for hours
  for (int i = 0; i < hourCool; i++) {
    float angle = map(i, 0, 12, 0, TWO_PI); // Calculate angle for the line
    drawLine(angle - TAU *0.25, innerRadius, hourTickLength); // Draw ticks for hours
  }
}

void drawLine(float angle, float r, float lineLength) {
  // Calculate coordinates of the end points of the line
  float startX = centerX + cos(angle) * (r - lineLength); // Draw ticks closer to the center
  float startY = centerY + sin(angle) * (r - lineLength);
  float endX = centerX + cos(angle) * r;
  float endY = centerY + sin(angle) * r;

  line(startX, startY, endX, endY); // Draw the line
}
