class Pantalla {
  PImage imagenFondo, logo;
  String pantalla;
  PFont fuente;
  int posY;

  Pantalla(String nombreImagenFondo) {
    fuente = createFont("Niagara-Solid.ttf", 40);
    textFont(fuente);
    imagenFondo = loadImage(nombreImagenFondo);
    logo = loadImage("Logo.png");
    pantalla = nombreImagenFondo;
    posY = 550;
  }

  void dibujar() {
    image(imagenFondo, 250, 250, width, height);
    if (pantalla == "FondoInicio.png") {
      pantalla0();
    }
    if (pantalla == "Creditos.png") {
      pantalla5();
    }
  }

  void pantalla0() {
    image(logo, 250, 125, width, height);
    textSize(70);
    textAlign(CENTER);
    fill(255, 176, 72);
    text("JUGAR", 250, 300);
    text("CREDITOS", 250, 375);
  }

  void pantalla5() {
    textSize(60);
    text("Argañaras Santiago", 250, posY);
    text("Legajo 91334/2", 250, posY + 100);
    text("Trabajo Practico N°5", 250, posY + 200);
    textSize(40);
    text("Volver", 460, 490);
    posY--;
  }
  
  void pantalla4() {
    text("GAME OVER",250,250);
  }
}
