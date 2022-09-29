class Joystick {

  PImage joystick1, joystick2;

  Joystick (){
    joystick1 = loadImage("joy_1.png");
    joystick2 = loadImage("joy_2.png");
  }

  void dibujar (int joysticks_){    
    if (joysticks_ == 1){
      image(joystick1,100,100);
    } else {
      image(joystick2,100,100);
    }
  } 
}
