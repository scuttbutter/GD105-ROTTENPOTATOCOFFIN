 //iM MAKING A MINI MAP 
 // FROM CRY OF FEAR
    // BUT AGAIN I DONT KNOW WHATT IM DOINGG 
    
    
    
    
    
    PImage img;

void setup(){
  size(500,500);
  img = loadImage("COFMAP.png");
  image(img,0,0);
}

void draw(){
  strokeWeight(5);
  stroke(#FFFFFF);
  noFill();
  circle (height/2,width/2, 410); // draws the circle
  fill(0,0,255);
  
  triangle(411,310,389,377,357,314); //THIS WILL ESSENTIALLY BE THE "PLAYER"
  
}
