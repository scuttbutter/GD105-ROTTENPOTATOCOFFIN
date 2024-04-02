void setup() {
  size(300, 100);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(255);
  
  // Get current time of day
  int currentHour = hour();
  int currentMinute = minute();
  int currentSecond = second();
  
  // Display time
  String timeString = nf(currentHour, 2) + ":" + nf(currentMinute, 2) + ":" + nf(currentSecond, 2);
  textSize(24);
  fill(0);
  text("Current Time: " + timeString, width/2, height/2);
}
