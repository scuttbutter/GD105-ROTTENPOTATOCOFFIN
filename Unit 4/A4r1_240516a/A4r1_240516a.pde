class DynamicText {
  String text;
  float x, y;
  float targetX, targetY; // Target position for animation
  float rotationAngle;
  float scaleFactor;
  color textColor;
  boolean isPulsating; // Flag to track if the text is pulsating
  
  DynamicText(String text, float x, float y) {
    this.text = text;
    this.x = x;
    this.y = y;
    this.targetX = x;
    this.targetY = y;
    this.rotationAngle = 0;
    this.scaleFactor = 15.0; // Increase size of letters
    this.textColor = color(0); // Default text color is black
    this.isPulsating = false; // Default is not pulsating
  }
  
  void display() {
    pushMatrix();
    translate(x, y);
    rotate(rotationAngle);
    scale(scaleFactor);
    fill(textColor);
    textAlign(CENTER, CENTER);
    text(text, 0, 0);
    popMatrix();
  }
  
  void rotate(float angle) {
    rotationAngle += angle;
  }
  
  void scale(float factor) {
    scaleFactor *= factor;
  }
  
  void setColor(color c) {
    textColor = c;
  }
  
  void update() {
    if (isPulsating) {
      // Move towards the target position
      float dx = targetX - x;
      float dy = targetY - y;
      float distance = sqrt(dx*dx + dy*dy);
      if (distance > 1) {
        x += dx * 0.05;
        y += dy * 0.05;
      } else {
        isPulsating = false; // Stop pulsating when reaching target
      }
    }
  }
  
  void pulsate(float targetX, float targetY) {
    this.targetX = targetX;
    this.targetY = targetY;
    isPulsating = true;
  }
}

// Global variables
String[] explosionText = {"B", "O", "O", "M"};
ArrayList<DynamicText> explosion = new ArrayList<DynamicText>(); // ArrayList to hold explosion text objects
float explosionX, explosionY; // Coordinates of the explosion center
float explosionRadius = 200; // Radius of the explosion

void setup() {
  size(800, 600);
  background(255);
  explosionX = width / 2;
  explosionY = height / 2;
}

void draw() {
  background(255);
  
  // Display and update the explosion
  for (DynamicText letter : explosion) {
    letter.display();
    letter.update();
  }
}

void mouseClicked() {
  // Add new explosion text
  for (String letter : explosionText) {
    // Randomize angle around the circle
    float angle = random(TWO_PI);
    // Calculate position around the circle
    float xPos = explosionX + cos(angle) * explosionRadius;
    float yPos = explosionY + sin(angle) * explosionRadius;
    DynamicText newLetter = new DynamicText(letter, explosionX, explosionY);
    newLetter.setColor(color(random(255), random(255), random(255))); // Randomize color
    newLetter.pulsate(xPos, yPos); // Move the letter towards the clicked position
    explosion.add(newLetter);
  }
}
