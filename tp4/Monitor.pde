class Monitor{

  PImage moni, fondo;
  
  Monitor(){
    moni = loadImage("monitor.png");  
    fondo = loadImage("fondo.png");
  }  
  
  void dibujar(){
    image(moni,270,10,200,137);
  }
  
  void encender(int Tiene_Disco){
    if(Tiene_Disco == 1){
      image(fondo,285,25,170,90);
    }
  }
}
