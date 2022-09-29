void setup(){
  size(400,400);
  noLoop();
}

Die tracy;

void draw(){
  background(200);
  tracy = new Die(200,200);
  tracy.show();
  tracy.roll();
}

void mousePressed(){
  redraw();
}

class Die { //models one single dice cube 
  int myX, myY;
  Die(int x, int y){ //constructor
    myX = x;
    myY = y;
  }
  void roll(){
    int numDie = (int)(Math.random()*6+1);
    fill(0);
    if (numDie == 1){
      ellipse(myX+25, myY+25, 10, 10); //center
    }
    else if (numDie == 2){
      ellipse(myX+10, myY+10, 10, 10); //top left
      ellipse(myX+40, myY+40, 10,10); //bottom right
    }
    else if (numDie == 3){
      ellipse(myX+40, myY+10, 10, 10); //top right
      ellipse(myX+10, myY+40, 10,10); //bottom left
      ellipse(myX+25, myY+25, 10, 10); //center
    }
    else if (numDie == 4){
      ellipse(myX+10, myY+10, 10, 10); //top left
      ellipse(myX+40, myY+40, 10,10); //bottom right
      ellipse(myX+40, myY+10, 10, 10); //top right
      ellipse(myX+10, myY+40, 10,10); //bottom left
    }
    else if (numDie == 5){
      ellipse(myX+40, myY+10, 10, 10); //top right
      ellipse(myX+10, myY+40, 10,10); //bottom left
      ellipse(myX+25, myY+25, 10, 10); //center
      ellipse(myX+10, myY+10, 10, 10); //top left
      ellipse(myX+40, myY+40, 10,10); //bottom right
    }
  }
  void show(){
    fill(255);
    stroke(0);
    rect(myX, myY, 50, 50);
  }
}
