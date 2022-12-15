class ProgramaPrincipal {
  Pantalla pantalla, pantalla0, pantalla1, pantalla2, pantalla3, pantalla4, pantalla5, pantalla6, pantalla7, pantalla8, pantalla9, pantalla10, pantalla11, pantalla12;
  Minijuego minijuego;
  PFont fuente;

  ProgramaPrincipal() {
    
    imageMode(CENTER);
    fuente = createFont("Niagara-Solid.ttf", 40);
    textFont(fuente);
    
    minijuego = new Minijuego(10);
    
    pantalla0 = new Pantalla("FondoInicio.png");
    pantalla1 = new Pantalla("Fondo.png");
    pantalla2 = new Pantalla("Fondo2.png");
    pantalla3 = new Pantalla("Fondo3.png");
    pantalla4 = new Pantalla("Fondo4.png");
    pantalla5 = new Pantalla("Fondo5.png");
    pantalla6 = new Pantalla("FondoMinijuego.png");
    pantalla7 = new Pantalla("Game_over.png");
    pantalla8 = new Pantalla("Ganaste.png");
    pantalla9 = new Pantalla("Creditos.png");
    pantalla10 = new Pantalla("Fondo6.png");
    pantalla11 = new Pantalla("Interior.png");
    pantalla12 = new Pantalla("Instrucciones_Minijuego.png");
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
  
  void mousePresionado() {
    if (pantalla == pantalla0) {
      if (mouseX > 200 && mouseX < 300 && mouseY > 250 && mouseY < 300) {
        pantalla = pantalla1;
        pausar_musica();
      }
      if (mouseX > 165 && mouseX < 330 && mouseY > 325 && mouseY < 375) {
        pantalla = pantalla9;
        pantalla.reset_texto();
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
    if (pantalla == pantalla3) {
      if (mouseX > 270 && mouseX < 300 && mouseY > 445 && mouseY < 465) {
        pantalla = pantalla4;
      }
      if (mouseX > 365 && mouseX < 395 && mouseY > 445 && mouseY < 465) {
        pantalla = pantalla2;
      }
    }
    if (pantalla == pantalla11) {
      if (mouseX > 115 && mouseX < 145 && mouseY > 215 && mouseY < 265) {
        pantalla = pantalla12;
      }
    }
  }
  
  void teclaPresionada() {
    if (pantalla == pantalla1) {
      if(keyCode == ENTER) {
        pantalla = pantalla2;
      }
    }
    if (pantalla == pantalla2) {
      if (keyCode == 'A') {
        pantalla = pantalla3;
      }
      if (keyCode == 'B') {
        pantalla = pantalla5;
      }
    }
    if (pantalla == pantalla5) {
      if (keyCode == 'C') {
        pantalla = pantalla11;
      }
      if (keyCode == 'D') {
        pantalla = pantalla10;
      }
    }
    if (pantalla == pantalla10 || pantalla == pantalla4) {
      if(keyCode == ENTER) {
        pantalla = pantalla7;
      }
    }
    if (pantalla == pantalla12) {
      if(keyCode == ENTER) {
        pantalla = pantalla6;
      }
    }
  }
  
  void pausar_musica() {
    if (pantalla != pantalla0) {
      fileTrack.pause();
    }
  }
}
