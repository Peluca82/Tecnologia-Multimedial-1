class Pantalla {
  PImage imagenFondo;
  PImage logo;
  String pantalla;
  PFont fuente;
  
  Pantalla(String nombreImagenFondo){
    fuente = createFont("Niagara-Solid.ttf",40);
    textFont(fuente);
    imagenFondo = loadImage(nombreImagenFondo);
    logo = loadImage("Logo.png");
    pantalla = nombreImagenFondo;
  }
  
  void dibujar() {
    image(imagenFondo,0,0,width,height);
    if(pantalla == "FondoInicio.png"){
      p0();
    }
  }
  
  void p0(){
    image(logo,0,-125,width,height);
    textSize(70);
    textAlign(CENTER);
    fill(255,176,72);
    text("JUGAR",250,300);
    text("CREDITOS",250,375);
  }
}
