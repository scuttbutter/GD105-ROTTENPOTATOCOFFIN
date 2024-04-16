float raidus=300;
float speed=2;
void setup() {
  size(1000, 600);
  background(0,0,0);
  colorMode (HSB, 360, 100, 50);
 strokeWeight(10);
  frameRate(60);
}

void draw() {
  translate(width/2, height/2);
  rotate(frameCount *0.20);
  fill(0,0,0);
  stroke(0, 0, 0, 50);
  line(sin(frameCount * 0.03) * raidus, 10, 50, 150);
  line(sin(frameCount * 0.014) * raidus, 10, 50, 150);
  line(sin(frameCount * 0.030) * raidus, 10, 50, 150);
  stroke(0, 0, 50);
   fill(random(100,360),100, random(50));
  line((frameCount * 0.05) * 300, 10, 50, 150);
  stroke(random(100,360), 255, random(50));
  fill(0,0,50);
  line(sin(frameCount * 0.07) * raidus, 10, 50, 150);
 

  raidus+=speed;
  if(raidus<=300 || raidus>=700){
    speed*=-1;
  }
  println(raidus);
}
