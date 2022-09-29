class Consola {
  
  Disco disco;
  Joystick joystick;
  Monitor monitor;
  PImage consola;
  int joysticks;
  int TieneDisco;


  Consola (){
    joysticks = round(random(1,2));
    TieneDisco = round(random(0,1));
    consola = loadImage("sin_cd.png");
    joystick = new Joystick();
    disco = new Disco();
    monitor = new Monitor();
  }

  void dibujar (){
    image(consola,100,100);
    joystick.dibujar(joysticks);
    disco.dibujar(TieneDisco);
    monitor.dibujar();
  }
  
  void play(){
    monitor.encender(TieneDisco);
  }
  
  void reset (){
    joysticks = round(random(1,2));
    TieneDisco = round(random(0,1));
  }
  
  void guia(){
    textSize(20);
    fill(0);
    text("Si hay un CD en la consola el monitor se prende",10,10,200,100);
    text("r = reset",10,100,200,100);
  }
}
