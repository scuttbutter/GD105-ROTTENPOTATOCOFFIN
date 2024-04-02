//HEY GUYS WELCOME BACK TO MY YOUTUBE CHANNEL 
//TODAY WERE MAKING A COLLAGE OFFF SOME OF MY FAVOS EVER 
//STARTING WITH ISAAC(OBVI)

 PImage img;// setting variables 
 PImage funnyMan;
 PImage playdoughIsaac;
 PImage heDOES;
 PImage transLAZ;
 PImage cuntySimon;
 PImage simonKitty;
 PImage skeleton;
 PImage maxwell;
 PImage upper;
 PImage pogSimon;
 PImage craig;
 
 float flash=255;
 float speed=75;
 
 void setup(){
  size(1000,800);
  background(#fac5e9);
  strokeWeight(25);
  stroke(255,0,0);
  
  funnyMan = loadImage("Booksimon.jpeg"); // loading images 
   heDOES = loadImage("heDoes.png");
  img = loadImage("Cofsimon.png");  //i inact started with no isaac
  playdoughIsaac = loadImage("playdoughCookie.png");
 transLAZ = loadImage("TRANSlaz.png");
 cuntySimon = loadImage("simonPeacesign.png");
 simonKitty = loadImage("simonKitty .png");
 skeleton = loadImage("skelly bones.png");
 maxwell = loadImage("simonWithCat.png");
 upper = loadImage("Upper.png");
  pogSimon = loadImage("surprisedSimon.png");
  craig = loadImage("Craig.png");
  
 
 } 
  
void draw(){
  image(skeleton, -51,15);
  image(pogSimon,607,394);
  image(funnyMan,699,7);
  image(maxwell,595,200);
  image(heDOES,790,274);
  image(cuntySimon,0,-17);
  image(simonKitty,704,484);
  image(img,-403,-236);
  image(playdoughIsaac,814,512);
  image(transLAZ,214,637);
  image(upper,603,427);
    image(craig,603,427);
  
  noFill();
  circle(504,214,422);
  
  line(135,427,244,362);
  triangle(212,346,254,353,245,405);
  
   // Draw the text
  fill(255,0,0,flash); // Set text color to red
  flash-= speed;
  if(flash>=255||flash<=0){
    speed*=-1; // of opacity is at 255 or > or 0 or <0 than reverse speed 
  }
  float textWidth = textWidth("WTF IS HE EVEN LOOKING AT"); // Calculate text width
  float scaleFactor = min(width * -12.4 / textWidth, height * -0.8 / textAscent()); // Calculate scale factor to fit text within screen
  textSize(48); // Set text size based on scale factor
  text("WTF IS HE EVEN LOOKING AT!!!!!!!", 40, 493);
}

 
