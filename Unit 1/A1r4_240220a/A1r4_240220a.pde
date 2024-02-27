 //iM MAKING A MINI MAP 
 // INSPO'D FROM CRY OF FEAR
    // BUT AGAIN I DONT KNOW WHATT IM DOINGG 
    
    
    
    
    
    PImage img;

void setup(){
  size(500,500);
  img = loadImage("COFMAP.png");
  image(img,0,0);
}

void draw(){
  fill(215,99,80);
  square (0,0,500);
  stroke(#ffffff);
  rect(98,171,169,234,-220);//Just fIGURED OUT I CAN DO THIS COOL THING WITH THE CORNERSSS
  rect(115,145,250,171,-299);
  fill(#79d595);
  noStroke();
  circle(332,65,83);
  circle(350,96,61);
  ellipse(420,114,182,50);
  
  strokeWeight(20);
  stroke(#2b2b2b);
  noFill();
  circle (height/2,width/2, 410); // draws the circle
  strokeWeight(200);
   circle (height/2,width/2, 600);
  stroke(63,58,58);
  strokeWeight(20);
  circle (height/2,width/2,425);
  fill(0,0,255);
  noStroke();
  triangle(114,349,129,348,139,319); //THIS WILL ESSENTIALLY BE THE "PLAYER"
   triangle(141,358,127,345,139,319);
}
