//video https://youtu.be/e8THatvp98w 

int ancho, cant, posX, mouse;
float frames;
color color1, color2;
boolean mover, mov, rect, fondo;

void setup(){
  size(700,700);
  Variables();
}

void draw(){
  Dibujarfondo();
  Cuadrados();
  Movercuadrados();
}
