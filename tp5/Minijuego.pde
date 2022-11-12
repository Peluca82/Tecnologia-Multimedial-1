class Minijuego {

  Submarino submarino;
  Obstaculo obstaculo;
  boolean colision, game_over;
  PImage corazon;
  int vida;

  Minijuego() {
    vida = 1;
    submarino = new Submarino();
    obstaculo = new Obstaculo();
    corazon = loadImage("Corazon.png");
    colision = false;
    game_over = false;
  }

  void dibujar() {
    submarino.dibujar();
    colision();
    if(vida == 1 && colision == false){
      obstaculo.dibujar();
      vida();
    }
  }

  void TeclaPresionada() {
    submarino.TeclaPresionada();
  }
  
  void colision(){
    if(floor(dist(obstaculo.posicionX(),obstaculo.posicionY(),submarino.posicionX(),submarino.posicionY())) <= 50){
      colision = true;
    }
    if(colision == true){
      vida = 0;
      game_over = true;
    }
  }
  
  void vida(){
    image(corazon,460,20);
  }
  
  boolean over(){
    if(game_over == true){
      return true;
    }
    if(game_over == false){
      return false;
    }
  }
}
