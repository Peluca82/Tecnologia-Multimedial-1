class Pantalla {
  String pantalla;
  PImage imagen;
  Boton boton, boton0, boton1, boton2;
  Texto texto; 

  Pantalla(String nombreImagenFondo) {

    pantalla = nombreImagenFondo;
    imagen = loadImage(pantalla);
    
    texto = new Texto(pantalla);

    boton0 = new Boton(pantalla, "BarrasVerticales.png");
    boton1 = new Boton(pantalla, "BarraHorizontalAbajo.png");
    boton2 = new Boton(pantalla, "BarrasHorizontales.png");
    boton = boton0;
  }

  void dibujar() {
    image(imagen, 250, 250, width, height);
    boton.dibujar();
    texto.dibujar();
  }

  void cambiarBoton() {
    if(pantalla == "pasillo.png"){
      boton = boton0;
    }
    if(pantalla == "ladoMalo.png"){
      boton = boton1;
    }
    if(pantalla == "ladoBueno.png"){
      boton = boton2;
    }
    if(pantalla == "Interior.png"){
      boton = boton1;
    }
  }
  
  void teclaPresionada() {

  }
  
  void mousePresionado() {
    cambiarBoton();
  }
}
