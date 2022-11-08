class Obstaculo {
  
  PImage piedra;
  int posX, posY;
  
  Obstaculo(){
    piedra = loadImage("Obstaculo.png");
    posX = floor(random(10, 490));
    posY = -300;
  }
  
  void dibujar(){
    image(piedra,posX,posY);
    caida();
  }
  
  void caida(){
    posY = posY + 3;
  }
}
