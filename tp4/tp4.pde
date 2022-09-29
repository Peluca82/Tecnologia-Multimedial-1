//https://www.youtube.com/watch?v=GjAx2MrAWDI 

Consola consola;

void setup(){
 size(500,500);
 consola = new Consola();
}

void draw(){
  background(200);
  consola.dibujar();
  consola.play();
  consola.guia();
}

void keyPressed(){
    if (key == 'r'){
      consola.reset();
    }
}
