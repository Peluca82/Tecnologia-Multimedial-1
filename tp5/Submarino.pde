class Submarino {

  PImage imagen;
  int posX, posY;

  Submarino() {
    imagen = loadImage("Submarino.png");
    posX = 50;
    posY = 250;
  }

  void dibujar() {
    image(imagen, posX, posY);
  }

  void TeclaPresionada() {
    if (keyCode == RIGHT) {
      posX = posX + 8;
    }
    if (keyCode == LEFT) {
      posX = posX - 5;
    }
    if (keyCode == UP) {
      posY = posY - 8;
    }
    if (keyCode == DOWN) {
      posY = posY + 5;
    }
  }
  
  int posicionX(){
    return posX;
  }
  
  int posicionY(){
    return posY;
  }
}
