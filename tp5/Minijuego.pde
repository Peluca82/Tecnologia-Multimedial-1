class Minijuego {

  Submarino submarino;
  Obstaculo [] obstaculos;
  int cant;
  boolean colision, game_over;
  PImage corazon;

  Minijuego(int cantObstaculos) {
    cant = cantObstaculos;
    submarino = new Submarino();
    obstaculos = new Obstaculo [cant];
    corazon = loadImage("Corazon.png");
    colision = false;
    game_over = false;
    for (int i = 0; i < cant; i++) {
      obstaculos[i] = new Obstaculo();
    }
  }

  void dibujar() {
    println(frameCount);
    submarino.dibujar();
    colision();
    vida();
    if (submarino.vida() == 1 && colision == false) {
      for (int i = 0; i < cant; i++) {
        if (frameCount%60 == 0) {
          obstaculos[i].dibujar();
        }
      }
    }
  }

  void TeclaPresionada() {
    submarino.TeclaPresionada();
  }

  void colision() {
    for (int i = 0; i < cant; i++) {
      if (floor(dist(obstaculos[i].posicionX(), obstaculos[i].posicionY(), submarino.posicionX(), submarino.posicionY())) <= 50) {
        colision = true;
      }
    }
    if (colision == true) {
      submarino.perder_vida();
      game_over = true;
    }
  }

  void vida() {
    image(corazon, 460, 20);
  }

  boolean over() {
    if (game_over == true) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    game_over = false;
    colision = false;
    submarino.reset();
    for (int i = 0; i < cant; i++) {
      obstaculos[i].reset();
    }
  }
}
