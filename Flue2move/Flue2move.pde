//////////////////////////////////////////////////////////////////////
//Her er objektet flue vha. klassen Flue
Flue f = new Flue();

void setup(){
  size(500,500);
}

void draw(){
  f.tegnFlue();
}

void keyPressed(){
  f = new Flue();
}

void mousePressed(){
  f = new Flue(mouseX, mouseY);
}

//////////////////////Her er klassen Flue///////////////////////////////////
class Flue{
  
  float positionX,positionY;
  float vinkel = 0; 
  
  //random position
  Flue(){
    positionX  = random(0,height);
    positionY  = random(0,width);
    vinkel     = random(0,2*PI);
  }
  
  //selected position
  Flue(float a, float b){
    positionX = a;
    positionY = b;
    vinkel    = random(0,2*PI);
  }

  void tegnFlue(){
    //push og pop matrix bruges udenom koordinatsystems-transformationer...
    //efter pop er koordinatsystemet tilbage til det oprindelige
    pushMatrix();
      //orindeligt koordinatsystem flyttes og roteres
      translate(positionX,positionY);
      rotate(vinkel);
        //fluen tegnes i koordinatsystemets origo dvs. (0,0)
        ellipse(0,0,20,8);
        ellipse(0,0-8,15,10);
        ellipse(0,0+8,15,10);
        ellipse(0+6,0,8,8);
    popMatrix();
  } 
}
//////////////////////////////////////////////////////
