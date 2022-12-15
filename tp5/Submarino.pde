class Submarino {
  PImage imagen;
  int posX, posY, vida;

  Submarino() {
    vida = 1;
    imagen = loadImage("Submarino.png");
    posX = 50;
    posY = 250;
  }
  
  void dibujar() {
    image(imagen, posX, posY);
    teclaPresionada();
  }
  
  void teclaPresionada() {
    if(keyPressed) {
      if (keyCode == RIGHT) {
        posX += 5;
      }
      if (keyCode == LEFT) {
        posX -= 2;
      }
      if (keyCode == UP) {
        posY -= 5;
      }
      if (keyCode == DOWN) {
        posY += 2;
      }
    }
  }

  int posicionX() {
    return posX;
  }

  int posicionY() {
    return posY;
  }

  int vida() {
    return vida;
  }

  void perder_vida() {
    vida = 0;
  }

  void reset() {
    posX = 50;
    posY = 250;
    vida = 1;
  }
}
