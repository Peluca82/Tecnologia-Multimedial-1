class Televisor {
  
  PImage tele, fondo;
  boolean TVEncendida;
  
  Televisor(){
    tele = loadImage("monitor.png");
    fondo = loadImage("fondo.png");
  }
  
  void dibujar(){
    image(tele,270,10,200,137);
    if(key == 'c'){
      TVEncendida = true;
    }
    if(TVEncendida == true){
      image(fondo,285,25,170,90);
    }
  }
}
