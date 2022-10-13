class Disco {
  
  PImage disco;
  boolean TieneCD;
  
  Disco(){   
    disco = loadImage("cd.png");
  }
  
  void dibujar(){
    if(key == 'c'){
      TieneCD = true;
    }
    if(TieneCD == true){
      image(disco,100,100);
    }
  }
}
