class Pantalla {
  String pantalla;
  PImage imagen, timon;
  Texto texto;

  Pantalla(String nombreImagenFondo) {
    pantalla = nombreImagenFondo;
    imagen = loadImage(pantalla);
    timon = loadImage("timon.png");
    texto = new Texto(pantalla);
  }

  void dibujar() {
    image(imagen, 250, 250, width, height);
    texto.dibujar();
    hover_timon();
  }
  
  void reset_texto() {
    texto.reset();
  }
  
  void hover_timon() {
    if(pantalla == "Interior.png") {
      cursor(ARROW);
      if (mouseX > 115 && mouseX < 145 && mouseY > 215 && mouseY < 265) {
        image(timon,250, 250, width, height);
        cursor(HAND);
      }
    }
  }
}
