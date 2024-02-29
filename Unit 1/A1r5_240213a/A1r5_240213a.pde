// THis is like my interprrtation of the vacation bible school cover 
//the sont is by ayesha erotica
// i just think this specific version is like a little too much for my eyes 
// so i made it simpler\
//btw the text spins!!!!!

int numGems = 45; // Number of gems
Gem[] gems = new Gem[numGems];
PFont juicyFont;

PImage playboyLogo;

void setup() {
  size(800, 800); 
  background(255, 121, 222);
  
  juicyFont = createFont("OldLondon.ttf", 36); // Load Juicy Couture font
  
  playboyLogo = loadImage("playboy_logo.png"); // Load Playboy logo image
  playboyLogo.resize(200, 0); // Resize logo to fit within the window
  
  // Initialize gems
  for (int i = 0; i < numGems; i++) {
    gems[i] = new Gem(random(width), random(-800, -100), random(15, 35), random(1, 5)); // Increased size range
  }
}

void draw() {
  background(255, 121, 178);
  
  // Draw radial gradient background
  float centerX = width / 2;
  float centerY = height / 2;
  float maxRadius = max(width, height);
  color c1 = color(255, 242, 242);
  color c2 = color(248, 105, 149);
  for (float r = 0; r < maxRadius; r++) {
    float inter = map(r, 0, maxRadius, 0, 2);
    color c = lerpColor(c1, c2, inter);
    stroke(c);
    noFill();
    ellipse(centerX, centerY, r * 2, r * 2);
  }
  
  // Draw gems
  for (int i = 0; i < numGems; i++) {
    gems[i].fall();
    gems[i].display();
    if (gems[i].offScreen()) {
      gems[i].reset();
    }
  }
  
  // Draw Playboy logo in the middle center
  image(playboyLogo, width/2 - playboyLogo.width/2, height/2 - playboyLogo.height/2);
  
  // Draw "Vacation Bible School" title around the Playboy logo
  drawCircularText("Vacation Bible School ", width / 2, height / 2, playboyLogo.width / 2 + 100, radians(frameCount));
}

void drawCircularText(String text, float centerX, float centerY, float radius, float startAngle) {
  float angleIncrement = TWO_PI / text.length(); // Divide the circle into segments for each character
  textAlign(CENTER, CENTER);
  for (int i = 0; i < text.length(); i++) {
    char character = text.charAt(i);
    float angle = startAngle + i * angleIncrement;
    float x = centerX + cos(angle) * radius;
    float y = centerY + sin(angle) * radius;
    pushMatrix();
    translate(x, y);
    rotate(angle + HALF_PI);
    textFont(juicyFont);
    fill(255); // White color
    textSize(36);
    text(character, 0, 0);
    popMatrix();
  }
}

class Gem {
  float x, y;
  float speed;
  float size;

  Gem(float x, float y, float size, float speed) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.speed = speed;
  }

  void fall() {
    y += speed;
  }

  boolean offScreen() {
    return y > height;
  }

  void reset() {
    y = random(-800, -100);
    x = random(width);
  }

  void display() {
    noStroke();
    for (int i = 5; i >= 1; i--) {
      float alpha = map(i, 1, 5, 100, 0);
      fill(250, 206, 255, 20);
      drawGem(x, y, size + i, size / 2 + i);
    }
    
    // Inner gem shape
    fill(239, 239, 239);
    drawGem(x, y, size, size / 2);
  }
  
  void drawGem(float x, float y, float width, float height) {
    beginShape();
    vertex(x, y - height / 2); // Top point
    vertex(x + width / 4, y); // Right point
    vertex(x, y + height / 2); // Bottom point
    vertex(x - width / 4, y); // Left point
    endShape(CLOSE);
  }
}
//I really wanna add more but this is already the vibe i wanted to go for so i dunno what else to add 

void mouseClicked() {
  save("GETAWAY BIBLE STUDY.png");
  println("SCREENIE!");
}
