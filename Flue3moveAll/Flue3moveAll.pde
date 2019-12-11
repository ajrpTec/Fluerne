// Den nye kode beskrives i kommentarerne (se nedenfor)
ArrayList<Flue> flueListe = new ArrayList<Flue>();     //Vi laver en arrayList til fluerne

void setup(){
  size(500,500);
}

void draw(){
  for(int i=0; i<flueListe.size(); i++){ //listen køres igennem med et "for loop"
    Flue f = flueListe.get(i);
    f.tegnFlue();
    f.flyt();
  }
}

void keyPressed(){
  flueListe.add(new Flue()); // tilfældig flue tilføjes til listen
}

void mousePressed(){
  flueListe.add(new Flue(mouseX, mouseY)); //flue med bestemt position tilføjes til listen
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
      translate(distanceFlyttet,0);
        ellipse(0,0,20,8);
        ellipse(0,0-8,15,10);
        ellipse(0,0+8,15,10);
        ellipse(0+6,0,8,8);
    popMatrix();
  } 
}
//////////////////////////////////////////////////////
