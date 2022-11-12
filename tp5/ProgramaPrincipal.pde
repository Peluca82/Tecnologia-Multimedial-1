class ProgramaPrincipal {
  Pantalla pantalla0, pantalla1, pantalla2, pantalla3, pantalla4, pantalla5;
  Pantalla pantalla;
  Minijuego minijuego;
  boolean minijuego_over;

  ProgramaPrincipal() {

    minijuego = new Minijuego();
    pantalla0 = new Pantalla("FondoInicio.png");
    pantalla1 = new Pantalla("Fondo.png");
    //pantalla2 = new Pantalla();
    //pantalla3 = new Pantalla();
    pantalla4 = new Pantalla("Game_over.png");
    pantalla5 = new Pantalla("Creditos.png");
    pantalla = pantalla0;
  }

  void dibujar() {
    pantalla.dibujar();
    if (pantalla == pantalla1) {
      minijuego.dibujar();
    }
    if (minijuego.over){
      pantalla = pantalla4;
    }
  }

  void TeclaPresionada() {
    if (pantalla == pantalla1) {
      minijuego.TeclaPresionada();
    }
  }

  void MousePresionado() {
    if (pantalla == pantalla0) {
      if (mouseX > 200 && mouseX < 300 && mouseY > 250 && mouseY < 300) {
        pantalla = pantalla1;
      }
      if (mouseX > 165 && mouseX < 330 && mouseY > 325 && mouseY < 375) {
        pantalla = pantalla5;
      }
    }
    if (pantalla == pantalla5) {
      if (mouseX > 430 && mouseX < 490 && mouseY > 460 && mouseY < 490) {
        pantalla = pantalla0;
      }
    }
  }
}
