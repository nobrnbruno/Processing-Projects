//global variables //<>//
int x, y, z, w;
int  p = 0;
int hp = 10;
float x1, y1, z1, w1;
PImage ship1, ship2, ship3, ship4, ship5, bomb, city, logo;
String rules;

void setup () {
  //configs general
  size(350, 700);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  ship1=loadImage("ship1.png");
  ship2=loadImage("ship2.png");
  ship3=loadImage("ship3.png");
  ship4=loadImage("ship4.png");
  ship5=loadImage("ship5.png");
  bomb=loadImage("bomb.png");
  city=loadImage("city.png");
  logo=loadImage("logo.png");
}

void draw () {
  rules="To destroy the bombs, press ENTER when they are within the shield's reach. Obliterate 150 bombs to successfully save the city from the aliens!";
  background(0);
  fill(60, 100, 100);
  rect(width/3, height/1.9, width/3, height/15, height/12);
  textSize(15);
  fill(0, 0, 0);
  text("ENTER to start", width/2.7, 4.5*height/8);
  fill(0, 0, 100);
  text(rules, width/5, height*2/3, width*3.2/5, height/5);
  int sec = millis();
  if ((sec/100)%5==1)
    image(logo, width/10, height/12, width*0.8, height/5);
  else if ((sec/100)%5==2)
    image(logo, width/10, height/12.5, width*0.8, height/5);
  else if ((sec/100)%5==3)
    image(logo, width/10, height/12.8, width*0.8, height/5);
  else if ((sec/100)%5==4)
    image(logo, width/10, height/12.5, width*0.8, height/5);
  else if ((sec/100)%5==0)
    image(logo, width/10, height/12, width*0.8, height/5);
  if (key == ENTER) {
    background(200, 100, 100);
    //points
    textSize(15);
    fill(0, 0, 100);
    text("Pontos: ", width/12, height/15);
    text(p, width/3, height/15);
    //bombs and bombs falling
    x=x+int(random(2, 6));
    x1=width*0.9/2+x;
    y=y+int(random(1, 5));
    y1=width*0.8/2+y;
    z=z+int(random(1, 7));
    z1=width*0.95/2+z;
    w=w+int(random(1, 6));
    w1=width*0.85/2+w;
    //quicker fall
    if (p>=30) {
      x=x+1;
      y=y+1;
      z=z+1;
      w=w+1;
    }
    if (p>=60) {
      x=x+1;
      y=y+1;
      z=z+1;
      w=w+1;
    }
    if (p>=100) {
      x=x+1;
      y=y+1;
      z=z+1;
      w=w+1;
    }
    //bomb images
    image(bomb, width/6, x1, width/12, width/12);
    image(bomb, width*2.2/6, y1, width/12, width/12);
    image(bomb, width*3.5/6, z1, width/12, width/12);
    image(bomb, width*4.5/6, w1, width/12, width/12);
    //game over or win
    if (p<150 && x1 >= height*4/5-width/12 || y1 >= height*4/5-width/12 || z1 >= height*4/5-width/12 || w1 >= height*4/5-width/12) {
      fill(0, 100, 100);
      textSize(30);
      text("BOOM!!! GAME OVER", width/7, height/4.5*2.5);
      x=height;
      y=height;
      z=height;
      w=height;
    }
    if (p>=150) {
      fill(200, 100, 100);
      rect(0, height/5.2*2.5, width, height/8);
      fill(0, 0, 0);
      textSize(30);
      text("YOU WIN", width/3, height/4.5*2.5);
      x=height;
      y=height;
      z=height;
      w=height;
    }
    //spaceship
    //"frames" made with multiple authoral png files so the spaceship could move properly on Processing:)
    if ((sec/100)%10==1)
      image(ship1, width/10, height/12, width*0.8, height/5);
    else if ((sec/100)%10==2)
      image(ship1, width/10, height/12, width*0.8, height/5);
    else if ((sec/100)%10==3)
      image(ship2, width/10, height/12, width*0.8, height/5);
    else if ((sec/100)%10==4)
      image(ship2, width/10, height/12, width*0.8, height/5);
    else if ((sec/100)%10==5)
      image(ship3, width/10, height/12, width*0.8, height/5);
    else if ((sec/100)%10==6)
      image(ship3, width/10, height/12, width*0.8, height/5);
    else if ((sec/100)%10==7)
      image(ship4, width/10, height/12, width*0.8, height/5);
    else if ((sec/100)%10==8)
      image(ship4, width/10, height/12, width*0.8, height/5);
    else if ((sec/100)%10==9)
      image(ship5, width/10, height/12, width*0.8, height/5);
    else if ((sec/100)%10==0)
      image(ship5, width/10, height/12, width*0.8, height/5);
    //shield
    fill(320, 100, 80, 80);
    rect(0, height/5.2*2.5, width, height/8);
    //city
    //city area
    fill(80, 100, 100, 96);
    rect(0, height*4/5, width, height*1.2/5);
    image(city, 0, height*4.2/5, width/2, height/6.2);
    image(city, width/2, height*4.2/5, width/2, height/6.2);
  }
}

void keyPressed() {
  //bombs functioning by clicking ENTER
  if (x1+width/12 >= height/5.2*2.5 && x1+width/12 <= height/5.2*2.5+height/8 && key == ENTER) {
    x=0;
    p=p+1;
  }
  if (y1+width/12 >= height/5.2*2.5 && y1+width/12 <= height/5.2*2.5+height/8 && key == ENTER) {
    y=0;
    p=p+1;
  }
  if (z1+width/12 >= height/5.2*2.5 && z1+width/12 <= height/5.2*2.5+height/8 && key == ENTER) {
    z=0;
    p=p+1;
  }
  if (w1+width/12 >= height/5.2*2.5 && w1+width/12 <= height/5.2*2.5+height/8 && key == ENTER) {
    w=0;
    p=p+1;
  }
}
