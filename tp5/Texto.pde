class Texto {
  int posY;
  String pantalla;
  PImage logo;
  PFont fuente1, fuente2;
  
  Texto(String _pantalla) {
    pantalla = _pantalla;
    logo = loadImage("Logo.png");
    posY = 550;
    textAlign(CENTER);
    fuente2 = createFont("Pixeled.ttf", 40);
    fuente1 = createFont("Niagara-Solid.ttf", 40);
  }
  
  void dibujar() {
    if (pantalla == "FondoInicio.png") {
      inicio();
    }
    if (pantalla == "Fondo.png") {
      escena1();
    }
    if (pantalla == "Fondo2.png") {
      escena2();
    }
    if (pantalla == "Fondo3.png") {
      escena3();
    }
    if (pantalla == "Fondo4.png") {
      escena4();
    }
    if (pantalla == "Fondo5.png") {
      escena5();
    }
    if (pantalla == "Fondo6.png") {
      escena6();
    }
    if (pantalla == "Instrucciones_Minijuego.png") {
      Instrucciones();
    }
    if (pantalla == "Creditos.png") {
      creditos();
    }
    if (pantalla == "Game_over.png") {
      Perdiste();
    }
    if (pantalla == "Ganaste.png") {
      ganaste();
    }
  }
  
  void inicio() {
    image(logo, 250, 125, width, height);
    textSize(70);
    fill(255, 176, 72);
    text("JUGAR", 250, 300);
    text("CREDITOS", 250, 375);
  }
  
  void escena1() {
    textFont(fuente2);
    textSize(12);
    fill(255, 255, 255);
    text("presionte ENTER", 130, 485, 500, 500);
    text("Mi nombre es Pierre Aronnax, soy biologo y el Capitan Nemo me tiene secuestrado en su submarino pero un terremoto hizo que pudiera llegar hasta las llaves de la celda, puedo escapar.", 25, 390, 450, 500);
  }
  
  void escena2() {
    textFont(fuente2);
    textSize(12);
    fill(255, 255, 255);
    text("Al salir de la celda me encontre con 2 pasillos,parece que el terremoto provoco que comenzaran a caer piedras, necesito llegar hasta la cabina de navegacion.", 25, 380, 450, 500);
    text("A. Izquierda      B. Derecha", 25, 455, 450, 500);
    text("Presione la tecla de la opcion que quiera", 0, 485, 500, 500);
  }
  
  void escena3() {
    textFont(fuente2);
    textSize(12);
    fill(255, 255, 255);
    text("Al final del pasillo hay un boton rojo, no se que pueda hacer pero quizas podria ayudarme.", 25, 390, 450, 500);
    text("PRESIONAR?    SI      NO",25, 450, 450, 500);
    text("Haga click en la opcion que desee", 0, 485, 500, 500);
  }
  
  void escena4() {
    textFont(fuente2);
    textSize(12);
    fill(255, 255, 255);
    text("VAYA!, las puertas se cerraron y esta comenzando a salir un gas raro de las rejillas, me siento mareado.", 25, 390, 450, 500);
    text("presionte ENTER", 130, 485, 500, 500);
  }
  
  void escena5() {
    textFont(fuente2);
    textSize(12);
    fill(255, 255, 255);
    text("En esta pasillo hay 2 puertas, una tiene que ser la cabina de navegacion.", 25, 390, 450, 500);
    text("C. Puerta Izq.      D. Puerta Der.", 25, 450, 450, 500);
    text("Presione la tecla de la opcion que quiera", 0, 485, 500, 500);
  }
  
  void escena6() {
    textFont(fuente2);
    textSize(12);
    fill(255, 255, 255);
    text("Desde la ventana viste que el Kraken aparecio, esta destruyendo el barco.", 25, 390, 450, 500);
    text("presionte ENTER", 130, 485, 500, 500);
  }
  
  void Instrucciones() {
    textFont(fuente1);
    textSize(50);
    fill(255, 255, 255);
    text("MINIJUEGO", 0, 10, 500, 500);
    textSize(40);
    text("INSTRUCCIONES:", 0, 70, 500, 500);
    text("Esquivar los obstaculos y llegar hasta el otro lado para escapar", 0, 125, 500, 500);
    text("CONTROLES: las flechas", 0, 325, 500, 500);
    text("presionte ENTER", 130, 450, 500, 500);
  }
  
  void creditos() {
    textFont(fuente1);
    textSize(60);
    text("Argañaras Santiago", 250, posY);
    text("Legajo 91334/2", 250, posY + 100);
    text("Trabajo Practico N°5", 250, posY + 200);
    textSize(40);
    text("Volver", 460, 490);
    posY--;
  }
  
  void ganaste() {
    textFont(fuente1);
    fill(255, 255, 255);
    textSize(70);
    text("ESCAPASTE", 250, 250);
    textSize(40);
    text("volver", 460, 490);
  }
  
  void Perdiste() {
    textFont(fuente1);
    fill(255, 255, 255);
    textSize(70);
    text("PERDISTE", 250, 250);
    textSize(40);
    text("volver", 460, 490);
  }
  
  void reset() {
    posY = 550;
  }
}
