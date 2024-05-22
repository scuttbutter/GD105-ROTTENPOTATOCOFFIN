float angle = 0;
float spacing = 10;
float offset = 0.1;
int lines = 60;
int sets = 120; // Number of sets of lines

int numParticles = 500; // Number of particles
Particle[] particles = new Particle[numParticles];

void setup() {
  size(600, 600, P3D);
  noSmooth();
  for (int i = 0; i < numParticles; i++) {
    particles[i] = new Particle();
  }
}

void draw() {
  background(255);
  lights();
  translate(width/2, height/2);
  rotateX(PI/4);
  rotateY(PI/4);
  
  // Draw particles
  for (int i = 0; i < numParticles; i++) {
    particles[i].update();
    particles[i].display();
  }
  
  for (int j = 0; j < sets; j++) {
    for (int i = -lines; i < lines; i++) {
      float x1 = i * spacing;
      float z1 = sin(angle + offset * i + j * TWO_PI / sets) * 100;
      float x2 = (i+1) * spacing;
      float z2 = sin(angle + offset * (i+1) + j * TWO_PI / sets) * 100;
      stroke(0);
      // Calculate the direction vector from line's position to the mouse cursor
      PVector linePos = new PVector(x1, 0, z1);
      PVector mousePos = new PVector(mouseX - width / 2, 0, mouseY - height / 2);
      PVector direction = PVector.sub(mousePos, linePos).normalize().mult(20);
      // Move the lines towards the cursor
      line(x1 + direction.x, 0, z1 + direction.z, x2 + direction.x, 0, z2 + direction.z);
    }
  }
  
  angle += 0.02;
}

class Particle {
  PVector position;
  PVector velocity;
  float lifespan;

  Particle() {
    position = new PVector(random(-width/2, width/2), random(-height/2, height/2), random(-width/2, width/2));
    velocity = new PVector(0, random(-1, -5), 0); // "falling upwards???"
    lifespan = 255;
  }

  void update() {
    position.add(velocity);
    lifespan -= 2; // Fade out over time
    if (position.y < -height/2) { // Reset if particle goes out of screen
      position.y = height/2;
      position.x = random(-width/2, width/2);
      position.z = random(-width/2, width/2);
      lifespan = 255;
    }
  }

  void display() {
    noStroke();
    float alpha = map(lifespan, 0, 255, 0, 255);
    fill(0, alpha);
    pushMatrix();
    translate(position.x, position.y, position.z);
    sphere(3); // Adjust size as needed
    popMatrix();
  }
}
