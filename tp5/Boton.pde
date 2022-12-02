class Boton {

  PImage boton;
  String pantalla, botonactual;

  Boton(String nombreImagenFondo, String botonActual) {
    pantalla = nombreImagenFondo;
    botonactual = botonActual;
    boton = loadImage(botonactual);
  }

  void dibujar() {
    if (pantalla == "pasillo.png" && botonactual == "BarrasVerticales.png") {
      image(boton, 250, 250, width, height);
    }
    if (pantalla == "ladoMalo.png" && botonactual == "BarraHorizontalAbajo.png") {
      image(boton, 250, 250, width, height);
    }
    if ( pantalla == "ladoBueno.png" && botonactual == "BarrasHorizontales.png") {
      image(boton, 250, 250, width, height);
    }
    if ( pantalla == "Interior.png" && botonactual == "BarraHorizontalAbajo.png") {
      image(boton, 250, 250, width, height);
    }
  }
}
