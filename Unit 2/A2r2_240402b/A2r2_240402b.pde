
void setup() 
  size(1000, 600);
  background(255);
  noFill();
  //loadImage
  frameRate(35);
}

void draw(){
  translate(width/2, height/2);
  rotate(frameCount *0.20);
  stroke(0,0,0,50);
  ellipse(sin(frameCount * 0.03) * 300, 10, 50, 150);
  stroke(255,0,0,50);
  ellipse(sin(frameCount * 0.05) * 300, 10, 50, 150);
  stroke(0,255,0,50);
  ellipse(sin(frameCount * 0.07) * 300, 10, 50, 150);
  
}
