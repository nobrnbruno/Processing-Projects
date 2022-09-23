int a = 800;

void setup() {
  size(800, 800);
  ellipseMode(CENTER);
}

void draw() {
  background(180);
  yinYang();
}

void yinYang() {
  noStroke();
  fill(255);
  circle(width/2, height/2, a);

  fill(0);
  arc(width/2, height/2, a, a, radians(270), radians(450));
  circle(width/2, height/2-a/4, a/2);

  fill(255);
  circle(width/2, height/2+a/4, a/2);
  circle(width/2, height/2-a/4, a/8);

  fill(0);
  circle(width/2, height/2+a/4, a/8);

  //stroke(255, 0, 0);
  //line(0, height/2, width, height/2);
  //line(width/2, 0, width/2, height);
}

void keyPressed() {
  if (keyCode == DOWN) {
      a = a-a/2;
  }
  if (keyCode == UP) {
    a = a*2;
  }
}
