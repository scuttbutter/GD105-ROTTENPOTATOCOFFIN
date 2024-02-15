int numGems = 20; // Number of gems
Gem[] gems = new Gem[numGems];

PImage playboyLogo;

void setup() {
  size(800, 800); // Set window size to 800x800
  playboyLogo = loadImage("playboy_logo.png"); // Load Playboy logo image
  playboyLogo.resize(200, 0); // Resize logo to fit within the window
  for (int i = 0; i < numGems; i++) {
    gems[i] = new Gem(random(width), random(-800, -100), random(15, 35), random(1, 5)); // Increased size range
  }
}

void draw() {
  background(255,121,222);
  
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
    
    // Outer glow effect
    for (int i = 5; i >= 1; i--) {
      float alpha = map(i, 1, 5, 100, 0); // Adjust transparency for each layer
      fill(250, 206, 255, 20); // Pink color with varying transparency
      beginShape();
      vertex(x, y - size / 2 - i);
      vertex(x + size / 4 + i, y - size / 4 - i);
      vertex(x + size / 2 + i, y);
      vertex(x + size / 4 + i, y + size / 4 + i);
      vertex(x, y + size / 2 + i);
      vertex(x - size / 4 - i, y + size / 4 + i);
      vertex(x - size / 2 - i, y);
      vertex(x - size / 4 - i, y - size / 4 - i);
      endShape(CLOSE);
    }
    
    // Inner gem shape
    fill(239, 239, 239);
    beginShape();
    vertex(x, y - size / 2);
    vertex(x + size / 4, y - size / 4);
    vertex(x + size / 2, y);
    vertex(x + size / 4, y + size / 4);
    vertex(x, y + size / 2);
    vertex(x - size / 4, y + size / 4);
    vertex(x - size / 2, y);
    vertex(x - size / 4, y - size / 4);
    endShape(CLOSE);
  }
}