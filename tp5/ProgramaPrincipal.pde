class ProgramaPrincipal {
  Pantalla pantalla0, pantalla1, pantalla2, pantalla3, pantalla4, pantalla5, pantalla6, pantalla7, pantalla8, pantalla9;
  Pantalla pantalla;
  Minijuego minijuego;
  boolean minijuego_over;
  PImage BarrasV, BarraHarriba, BarraHAabajo;

  ProgramaPrincipal() {

    BarrasV = loadImage("BarrasVerticales.png");
    BarraHarriba = loadImage("BarraHorizontalArriba.png");
    BarraHAabajo = loadImage("BarraHorizontalAbajo.png");

    minijuego = new Minijuego(10);
    pantalla0 = new Pantalla("FondoInicio.png");
    pantalla1 = new Pantalla("FondoMinijuego.png");
    pantalla2 = new Pantalla("pasillo.png");
    pantalla3 = new Pantalla("ladoBueno.png");
    pantalla4 = new Pantalla("Game_over.png");
    pantalla5 = new Pantalla("Creditos.png");
    pantalla6 = new Pantalla("Ganaste.png");
    pantalla7 = new Pantalla("ladoMalo.png");
    pantalla8 = new Pantalla("Interior.png");
    pantalla9 = new Pantalla("FondoInicio2.png");
    pantalla = pantalla0;
  }

  void dibujar() {
    pantalla.dibujar();
    if (pantalla == pantalla1) {
      minijuego.dibujar();
    }
    if (minijuego.over() && pantalla == pantalla1) {
      pantalla = pantalla4;
    }
    if (minijuego.PosXsubmarino() > 550 && pantalla == pantalla1) {
      pantalla = pantalla6;
      minijuego.reset();
    }
    if (pantalla == pantalla2) {
      image(BarrasV, 250, 250);
    }
    if (pantalla == pantalla7) {
      image(BarraHAabajo, 250, 250);
    }
    if ( pantalla == pantalla3) {
      image(BarraHarriba, 250, 250);
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
        pantalla = pantalla9;
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
    if (pantalla == pantalla4 || pantalla == pantalla6) {
      if (mouseX > 430 && mouseX < 490 && mouseY > 460 && mouseY < 490) {
        pantalla = pantalla0;
        minijuego.reset();
      }
    }
    if (pantalla == pantalla9) {
      if (mouseX > 430 && mouseX < 490 && mouseY > 460 && mouseY < 490) {
        pantalla = pantalla2;
      }
    }
    if (pantalla == pantalla2) {
      if (mouseX > 0 && mouseX < 125 && mouseY > 125 && mouseY < 375) {
        pantalla = pantalla7;
      }
      if (mouseX > 375 && mouseX < 500 && mouseY > 125 && mouseY < 375) {
        pantalla = pantalla3;
      }
    }
    if (pantalla == pantalla7) {
      if (mouseX > 125 && mouseX < 375 && mouseY > 375 && mouseY < 500) {
        pantalla = pantalla2;
      }
    }
    if (pantalla == pantalla3) {
      if (mouseX > 125 && mouseX < 375 && mouseY > 0 && mouseY < 125) {
        pantalla = pantalla8;
      }
    }
  }
}
