void setup() {
  size(600, 600);
}

void draw() {
  background(150);
  wifi();
}

void wifi() {
  int c = 200;

  strokeWeight(0);
  if (mouseY <= height-height/8) {
    fill(0);
  } else {
    fill(c);
  }
  circle(width/2, height-height/8, (height/8)*mouseX/width);

  noFill();
  strokeWeight((height/8)*mouseX/width);
  if (mouseY <= height-height/8-height/4) {
    stroke(0);
  } else {
    stroke(c);
  }
  arc(width/2, height-height/8, (height/2)*mouseX/width, (height/2)*mouseX/width, radians(235), radians(305));
  if (mouseY <= height-height/8-height/2) {
    stroke(0);
  } else {
    stroke(c);
  }
  arc(width/2, height-height/8, height*mouseX/width, height*mouseX/width, radians(235), radians(305));
  if (mouseY <= height-height/8-(3*height/4)) {
    stroke(0);
  } else {
    stroke(c);
  }
  arc(width/2, height-height/8, (height+height/2)*mouseX/width, (height+height/2)*mouseX/width, radians(235), radians(305));
}
