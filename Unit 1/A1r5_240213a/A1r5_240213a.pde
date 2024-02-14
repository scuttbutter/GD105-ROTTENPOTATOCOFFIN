int numGems = 30; // Number of gems
Gem[] gems = new Gem[numGems];

void setup() {
  background (255,255,255);
  size(800, 800);
  for (int i = 0; i < numGems; i++) {
    gems[i] = new Gem(random(width), random(-400, -100), random(5, 15), random(1, 5));
  }
}

void draw() {
  background(220);
  for (int i = 0; i < numGems; i++) {
    gems[i].fall();
    gems[i].display();
    if (gems[i].offScreen()) {
      gems[i].reset();
    }
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
    y = random(-400, -100);
    x = random(width);
  }

  void display() {
    noStroke();
    fill(255, 0, 255);
    ellipse(x, y, size, size);
  }
}
