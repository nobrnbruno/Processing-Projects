void setup(){
  //base configs
  size(600, 400);
  rectMode(CENTER);
  ellipseMode(CENTER);
  noStroke();
}

void draw(){
  background(180);
  //executes the fuction
  flag();
  //show mouseX on console
  println("Cursor position on X:",mouseX);
}

void flag(){
  //white rectangle
  fill(255);
  rect(width/2, height/2, mouseX, 2*mouseX/3);
  //red circle
  fill(255, 0, 0);
  circle(width/2, height/2, 2*3/5*mouseX/3);
}
