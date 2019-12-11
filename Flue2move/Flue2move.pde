Flue f = new Flue();

void setup(){
  size(500,500);
}

void draw(){
  f.tegnFlue();
  f.flyt();
}

void keyPressed(){
  f = new Flue();
}

void mousePressed(){
  f = new Flue(mouseX, mouseY);
}

/////////////////////////////////////////////////////////
class Flue{
  
  float positionX,positionY;
  float distanceFlyttet;
  float vinkel = 0; 
  
  Flue(){
    positionX  = random(0,height);
    positionY  = random(0,width);
    vinkel     = random(0,2*PI);
  }
  
  Flue(float a, float b){
    positionX = a;
    positionY = b;
    vinkel    = random(0,2*PI);
  }
  
  void flyt(){
    distanceFlyttet = distanceFlyttet + 0.5;
  }

  void tegnFlue(){
    pushMatrix();
      translate(positionX,positionY);
      rotate(vinkel);
      translate(distanceFlyttet,0); //det "nye" koordinatsystem flyttes i x-aksens retning
        ellipse(0,0,20,8);
        ellipse(0,0-8,15,10);
        ellipse(0,0+8,15,10);
        ellipse(0+6,0,8,8);
    popMatrix();
  } 
}
//////////////////////////////////////////////////////
