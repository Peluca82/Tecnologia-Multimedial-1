class ProgramaPrincipal {
  Pantalla p0,p1,p2;
  Pantalla pantalla;
  Minijuego minijuego;
  
  ProgramaPrincipal(){

    minijuego = new Minijuego();
    p0 = new Pantalla("FondoInicio.png");
    p1 = new Pantalla("Fondo.png");
    //p2 = new Pantalla();
    //p3 = new Pantalla();
    //p4 = new Pantalla();
    //p5 = new Pantalla();
    
    pantalla = p0;
  }
  
  void dibujar(){
    pantalla.dibujar();
    if(pantalla == p1){
      minijuego.dibujar();
    }
  }
  
  void TeclaPresionada(){
    if(pantalla == p1){
      minijuego.TeclaPresionada();
    }
  }
  
  void MousePresionado(){
    pantalla = p1;
  }
}
