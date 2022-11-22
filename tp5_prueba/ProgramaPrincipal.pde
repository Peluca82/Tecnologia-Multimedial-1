class ProgramaPrincipal {
  Pantalla pantalla, pantalla0, pantalla1, pantalla2, pantalla3, pantalla4, pantalla5, pantalla6, pantalla7, pantalla8, pantalla9;
  PFont fuente;
  Minijuego minijuego;
  boolean minijuego_over;
  


  ProgramaPrincipal() {
    fuente = createFont("Niagara-Solid.ttf", 40);
    textFont(fuente);

    minijuego = new Minijuego(10);

    pantalla0 = new Pantalla("FondoInicio.png");
    pantalla1 = new Pantalla("FondoInicio2.png");
    pantalla2 = new Pantalla("pasillo.png");
    pantalla3 = new Pantalla("ladoMalo.png");
    pantalla4 = new Pantalla("ladoBueno.png");
    pantalla5 = new Pantalla("Interior2.png");
    pantalla6 = new Pantalla("FondoMinijuego.png");   
    pantalla7 = new Pantalla("Game_over.png");
    pantalla8 = new Pantalla("Ganaste.png");
    pantalla9 = new Pantalla("Creditos.png");
    pantalla = pantalla0;
  }

  void dibujar() {
    pantalla.dibujar();
    if (pantalla == pantalla6) {
      minijuego.dibujar();
    }
    if (minijuego.over() && pantalla == pantalla6) {
      pantalla = pantalla7;
      minijuego.reset();
    }
    if (minijuego.PosXsubmarino() > 550 && pantalla == pantalla6) {
      pantalla = pantalla8;
      minijuego.reset();
    }
  }

  void teclaPresionada() {
    if (pantalla == pantalla6) {
      minijuego.teclaPresionada();
    }
  }

  void mousePresionado() {
    if (pantalla == pantalla0) {
      if (mouseX > 200 && mouseX < 300 && mouseY > 250 && mouseY < 300) {
        pantalla = pantalla1;
      }
      if (mouseX > 165 && mouseX < 330 && mouseY > 325 && mouseY < 375) {
        pantalla = pantalla9;
      }
    }
    if (pantalla == pantalla9) {
      if (mouseX > 430 && mouseX < 490 && mouseY > 460 && mouseY < 490) {
        pantalla = pantalla0;
      }
    }
    if (pantalla == pantalla7 || pantalla == pantalla8) {
      if (mouseX > 430 && mouseX < 490 && mouseY > 460 && mouseY < 490) {
        pantalla = pantalla0;
        minijuego.reset();
      }
    }
    if (pantalla == pantalla1) {
      if (mouseX > 430 && mouseX < 490 && mouseY > 460 && mouseY < 490) {
        pantalla = pantalla2;
      }
    }
    if (pantalla == pantalla2) {
      if (mouseX > 0 && mouseX < 125 && mouseY > 125 && mouseY < 375) {
        pantalla = pantalla3;
      }
      if (mouseX > 375 && mouseX < 500 && mouseY > 125 && mouseY < 375) {
        pantalla = pantalla4;
      }
    }
    if (pantalla == pantalla3) {
      if (mouseX > 125 && mouseX < 375 && mouseY > 375 && mouseY < 500) {
        pantalla = pantalla2;
      }
    }
    if (pantalla == pantalla4) {
      if (mouseX > 125 && mouseX < 375 && mouseY > 0 && mouseY < 125) {
        pantalla = pantalla5;
      }
      if (mouseX > 125 && mouseX < 375 && mouseY > 375 && mouseY < 500) {
        pantalla = pantalla2;
      }
    }
    if (pantalla == pantalla5) {
      if (mouseX > 125 && mouseX < 375 && mouseY > 375 && mouseY < 500) {
        pantalla = pantalla4;
      }
      if (mouseX > 120 && mouseX < 150 && mouseY > 220 && mouseY < 260) {
        pantalla = pantalla6;
      }
    }
    pantalla.mousePresionado();
  }
}
