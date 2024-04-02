int numBalls = 3; // Number of balls
float[] ballX = new float[numBalls]; // Array to store ball x positions
float[] ballY = new float[numBalls]; // Array to store ball y positions
float[] speedX = new float[numBalls]; // Array to store ball x speeds
float[] speedY = new float[numBalls]; // Array to store ball y speeds
int ballSize = 30; // Ball size

void setup() {
  size(600, 600);
  
  // Initialize ball positions and speeds
  for (int i = 0; i < numBalls; i++) {
    ballX[i] = random(width);
    ballY[i] = random(height);
    speedX[i] = random(3, 5);
    speedY[i] = random(3, 5);
  }
}

void draw() {
  background(0);
  
  // Draw balls
  for (int i = 0; i < numBalls; i++) {
    fill(253, 253, 253);
    ellipse(ballX[i], ballY[i], ballSize, ballSize);
    
    // Update ball positions
    ballX[i] += speedX[i];
    ballY[i] += speedY[i];
    
    // Check for collisions with walls
    if (ballX[i] < 0 || ballX[i] > width) {
      speedX[i] *= -1;
    }
    if (ballY[i] < 0 || ballY[i] > height) {
      speedY[i] *= -1;
    }
    
    // Check for collision with mouse
    if (dist(ballX[i], ballY[i], mouseX, mouseY) < ballSize / 2) {
      float dx = ballX[i] - mouseX;
      float dy = ballY[i] - mouseY;
      float magnitude = sqrt(dx * dx + dy * dy);
      float normalX = dx / magnitude;
      float normalY = dy / magnitude;
      float dotProduct = speedX[i] * normalX + speedY[i] * normalY;
      speedX[i] = 2 * dotProduct * normalX - speedX[i];
      speedY[i] = 2 * dotProduct * normalY - speedY[i];
    }
  }
}
