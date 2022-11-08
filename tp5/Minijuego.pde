class Minijuego {
  
  Submarino submarino;
  Obstaculo obstaculo;
  
  Minijuego(){
    submarino = new Submarino();
    obstaculo = new Obstaculo();
  }
  
  void dibujar(){
    submarino.dibujar();
    obstaculo.dibujar();
  }
  
  void TeclaPresionada(){
    submarino.TeclaPresionada();
  }
}
