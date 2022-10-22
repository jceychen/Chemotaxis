Walker [] smile = new Walker[40];
void setup() {
  size(500, 500);
  background(0);
  for (int i = 0; i < smile.length; i++) {
    smile[i] = new Walker((int)(Math.random()*500), (int)(Math.random()*500));
  }
}

void draw() {
  background(255, 245, 238);
  noFill();
  ellipse(mouseX, mouseY, 25, 25);
  line(mouseX-10, mouseY+10, mouseX-15, mouseY+40);
  line(mouseX+10, mouseY+10, mouseX+15, mouseY+40);
  line(mouseX+15, mouseY+40, mouseX-15, mouseY+40);
  line(mouseX-5, mouseY+40, mouseX-10, mouseY+60);
  line(mouseX+5, mouseY+40, mouseX+10, mouseY+60);
  line(mouseX+12, mouseY+15, mouseX+30, mouseY);
  line(mouseX-12, mouseY+15, mouseX-30, mouseY);
  fill(0);
  ellipse(mouseX-4, mouseY, 1, 2);
  ellipse(mouseX+4, mouseY, 1, 2);
  noFill();
  arc(mouseX, mouseY+6, 8, 4, radians(180), radians(270));
  int j = 0;
  while (j < smile.length) {
    smile[j].move();
    smile[j].show();
    j++;
  }
}

class Walker {
  int myX, myY;
  Walker(int x, int y) {
    myX = x;
    myY = y;
  }

  void show() {
    fill(255, 234, 0);
    ellipse(myX, myY, 30, 30);
    fill(0);
    ellipse(myX-4, myY, 2, 2);
    ellipse(myX+4, myY, 2, 2);
    noFill();
    strokeWeight(1);
    arc(myX, myY+4, 8, 4, radians(0), radians(180));
  }

  void move() {
    if (mouseX > myX) {
      myX = myX + (int)(Math.random()*10) - 2;
    } else {
      myX = myX - (int)(Math.random()*10) - 4;
    }
    if (mouseY > myY) {
      myY = myY + (int)(Math.random()*10) - 2;
    } else {
      myY = myY - (int)(Math.random()*10) - 4;
    }
  }
}   
