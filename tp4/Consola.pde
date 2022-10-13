class Consola {
  
  Joystick joystick,joystick2;
  Disco disco;
  PImage consola;
  
  Consola(){
    joystick = new Joystick();
    joystick2 = new Joystick();
    disco = new Disco();
    consola = loadImage("sin_cd.png");
  }
  
  void dibujar(){
    image(consola,100,100);
    joystick.dibujar(1);
    joystick2.dibujar(2);
    disco.dibujar();
  }
}
