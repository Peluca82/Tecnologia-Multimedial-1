class Disco {

  PImage disco;

  Disco (){
    disco = loadImage("cd.png");
  }
  
  void dibujar (int Tiene_Disco){
    if(Tiene_Disco == 1){
       image(disco,100,100);
    }
  } 
}
