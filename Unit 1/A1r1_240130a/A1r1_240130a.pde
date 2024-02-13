//ITS SCOTTNATIONN
//I DONT KNOW WHAT IM DOING RN!!!
//

void setup() {
  size (810, 780);
  background (#ffffff);
  strokeWeight(3);
}

void draw() {
  // making the bases of the rectangles??
  noStroke();
  fill(#e6e5e0);
  rect(25, 25, 160, 120);
  rect (25, 170, 160, 120);
  rect (25, 170+150, 160, 120);
  rect (25, 170+300, 160, 120);
  rect (25, 170+450, 160, 120);
  // second colum of rectangles(they start becoming colorrss
  fill(#7094de);
  rect(225, 25, 160, 120);
  fill(#b43e3e);
  rect(225, 170, 160, 120);
  fill(#38563c);
  rect(225, 170+150, 160, 120);
  fill(#567842);
  rect(225, 170+300, 160, 120);
  fill(#c65a2f);
  rect(225, 170+450, 160, 120);
  // third colummmm of rectssss
  fill(#e6e5e0);
  rect(425, 25, 160, 120);
  rect (425, 170, 160, 120);
  rect (425, 170+150, 160, 120);
  rect (425, 170+300, 160, 120);
  rect (425, 170+450, 160, 120);
  // fourth column of tangles
  fill(#3c8880);
  rect(225+400, 25, 160, 120);
  fill(#662222);
  rect(225+400, 170, 160, 120);
  fill(#d0be49);
  rect(225+400, 170+150, 160, 120);
  fill(#393e5d);
  rect(225+400, 170+300, 160, 120);
  fill(#2f2a28);
  rect(225+400, 170+450, 160, 120);

  // TIME TO MAKE REACTANGLES IN RECTANGLES
  fill(#7094de);
  rect(45, 45, 120, 77);
  fill(#b43e3e);
  rect(45, 190, 120, 77);
  fill(#38563c);
  rect(45, 190+150, 120, 77);
  fill(#567842);
  rect(45, 190+300, 120, 77);
  fill(#c65a2f);
  rect(45, 190+450, 120, 77);
  //second column
  fill(#e6e5e0);
  rect(245, 45, 120, 77);
  rect(245, 190, 120, 77);
  rect(245, 190+150, 120, 77);
  rect(245, 189+300, 120, 77);
  rect(245, 190+450, 120, 77);
  // third column
  fill(#3c8880);
  rect(245+200, 45, 120, 77);
  fill(#662222);
  rect(245+200, 190, 120, 77);
  fill(#d0be49);
  rect(245+200, 190+150, 120, 77);
  fill(#393e5d);
  rect(245+200, 190+300, 120, 77);
  fill(#2f2a28);
  rect(245+200, 190+450, 120, 77);
  // last column
  fill(#e6e5e0);
  rect(645, 45, 120, 77);
  rect(645, 190, 120, 77);
  rect(645, 190+150, 120, 77);
  rect(645, 189+300, 120, 77);
  rect(645, 190+450, 120, 77);

  // first pair of lines
  // THESE LINES ACTAUALLY TOOK ME AGES TO FIGURE OUT
  stroke(189,62,27,165);// the last number adjusts the opacity of the line
  line(146, 288, 146, 171);
  stroke(189,62,27,165);
  line(63, 288, 63, 171);
  stroke(33,57,40,140);
  line(26, 228, 183, 227);

  stroke(189,62,27,165);
  line(146+200, 288, 146+200, 171);
  stroke(189,62,27,165);
  line(63+200, 288, 63+200, 171);
  stroke(33,57,40,140);
  line(26+200, 228, 183+200, 227);
  
  // second pair
  stroke(54,15,15);
  line(505,288,505,170);
  line(505,288,505,170);
  
}
void mouseClicked() {
  save("buttfart.png");
  println("buttshot!");
}
