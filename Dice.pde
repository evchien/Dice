void setup(){
  size(400, 400);
  noLoop();
  textAlign(CENTER);
}

Die tracy;
int counter = 0;

void draw(){
  background(200);
  for(int y = 30; y <= 340; y = y + 30){
    for(int x = 30; x <= 340; x = x + 30){
      tracy = new Die(x,y);
      tracy.show();
      tracy.roll();
    }
  }
  text("Total Dots: "+counter, 200, 20);
}

void mousePressed(){
  redraw();
  counter = 0;
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
      ellipse(myX+12.5, myY+12.5, 2.5, 2.5); //center
      counter = counter + 1;
    }
    else if (numDie == 2){
      ellipse(myX+5, myY+5, 2.5, 2.5); //top right
      ellipse(myX+20, myY+20, 2.5, 2.5); //bottom right
      counter = counter + 2;
    }
    else if (numDie == 3){
      ellipse(myX+20, myY+5, 2.5, 2.5); //top right
      ellipse(myX+5, myY+20, 2.5, 2.5); //bottom left
      ellipse(myX+12.5, myY+12.5, 2.5, 2.5); //center
      counter = counter + 3;
    }
    else if (numDie == 4){
      ellipse(myX+5, myY+5, 2.5, 2.5); //top left
      ellipse(myX+20, myY+20, 2.5, 2.5); //bottom right
      ellipse(myX+20, myY+5, 2.5, 2.5); //top right
      ellipse(myX+5, myY+20, 2.5, 2.5); //bottom left
      counter = counter + 4;
    }
    else if (numDie == 5){
      ellipse(myX+20, myY+5, 2.5, 2.5); //top right
      ellipse(myX+5, myY+20, 2.5, 2.5); //bottom left
      ellipse(myX+12.5, myY+12.5, 2.5, 2.5); //center
      ellipse(myX+5, myY+5, 2.5, 2.5); //top left
      ellipse(myX+20, myY+20, 2.5, 2.5); //bottom right
      counter = counter + 5;
    }
    else if (numDie == 6){
      ellipse(myX+5, myY+5, 2.5, 2.5); //top left
      ellipse(myX+5, myY+12.5, 2.5, 2.5); //center left
      ellipse(myX+5, myY+20, 2.5, 2.5); //bottom left
      ellipse(myX+20, myY+5, 2.5, 2.5); //top right
      ellipse(myX+20, myY+12.5, 2.5, 2.5); //center right
      ellipse(myX+20, myY+20, 2.5, 2.5); //bottom right      
      counter = counter + 6;
    }
  }
  void show(){
    fill((int)(Math.random()*50+120), (int)(Math.random()*50+100), (int)(Math.random()*50+150));
    stroke(0);
    rect(myX, myY, 25, 25, 5);
  }
}
