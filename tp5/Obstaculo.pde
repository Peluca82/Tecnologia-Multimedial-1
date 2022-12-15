class Obstaculo {
  PImage piedra;
  int posX, posY;

  Obstaculo(int i) {
    piedra = loadImage("Obstaculo.png");
    posX = floor(random(10, 490));
    posY = -300*i;
  }
  
  void dibujar() {
    image(piedra, posX, posY);
    caida();
  }
  
  void caida() {
    posY = posY + 8;
  }

  int posicionX() {
    return posX;
  }

  int posicionY() {
    return posY;
  }

  void reset(int i) {
    posX = floor(random(10, 490));
    posY = -300*i;
  }
}
