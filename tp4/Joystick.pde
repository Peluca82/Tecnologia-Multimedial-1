class Joystick {
  
  PImage joystick1, joystick2;
  boolean enchufado;
  
  Joystick(){
    
    joystick1 = loadImage("joy0.png");
    joystick2 = loadImage("joy1.png");
  }
  
  void dibujar(int cual){
    if (cual == 1){
      image(joystick1,100,100);
    }
    
    if(key == 'j'){
      enchufado = true;
    }
        
    if (cual == 2 && enchufado){
      if(enchufado == true){
        image(joystick2,100,100);
      }
    }
  }
}
