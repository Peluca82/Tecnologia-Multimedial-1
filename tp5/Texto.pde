class Texto {

  int posY;
  PImage logo;
  String pantalla;

  Texto(String _pantalla) {
    pantalla = _pantalla;
    posY = 550;
    logo = loadImage("Logo.png");
  }

  void dibujar() {
    if (pantalla == "Creditos.png") {
      creditos();
    } else if (pantalla == "Game_over.png") {
      gameOver();
    } else if (pantalla == "Ganaste.png") {
      ganaste();
    } else if (pantalla == "FondoInicio.png") {
      inicio();
    } else if (pantalla == "FondoInicio2.png") {
      inicio2();
    }
  }

  void creditos() {
    textSize(60);
    text("Argañaras Santiago", 250, posY);
    text("Legajo 91334/2", 250, posY + 100);
    text("Trabajo Practico N°5", 250, posY + 200);
    textSize(40);
    text("Volver", 460, 490);
    posY--;
  }

  void gameOver() {
    fill(255, 255, 255);
    textSize(70);
    text("GAME OVER", 250, 250);
    textSize(40);
    text("volver", 460, 490);
  }

  void ganaste() {
    fill(255, 255, 255);
    textSize(70);
    text("ESCAPASTE", 250, 250);
    textSize(40);
    text("volver", 460, 490);
  }

  void inicio() {
    image(logo, 250, 125, width, height);
    textSize(70);
    textAlign(CENTER);
    fill(255, 176, 72);
    text("JUGAR", 250, 300);
    text("CREDITOS", 250, 375);
  }

  void inicio2() {
    textSize(60);
    fill(0, 0, 0);
    text("El submarino corre peligro, comenzaron a caer piedras, tienes que llegar a la habitacion correcta para controlar el submarino y escapar", 0, 30, 500, 500);
    fill(255, 176, 72);
    text("El submarino corre peligro, comenzaron a caer piedras, tienes que llegar a la habitacion correcta para controlar el submarino y escapar", 5, 30, 500, 500);
    textSize(40);
    fill(0, 0, 0);
    text("siguiente", 450, 490);
    fill(255, 176, 72);
    text("siguiente", 452, 490);
  }
}
