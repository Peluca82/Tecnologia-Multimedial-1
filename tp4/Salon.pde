class Salon {

  Consola consola;
  Televisor televisor;

  Salon() {
    consola = new Consola();
    televisor = new Televisor();
  }

  void dibujar() {
    guia();
    consola.dibujar();
    televisor.dibujar();
  }

  void guia() {
    textSize(20);
    fill(0);
    text("c = insertar CD", 10, 10, 200, 100);
    text("j = insertar joystick", 15, 35, 200, 100);
  }
  

}
