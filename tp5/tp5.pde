ProgramaPrincipal programaPrincipal;

void setup() {
  imageMode(CENTER);
  size(500, 500);
  programaPrincipal = new ProgramaPrincipal();
}

void draw() {
  background(200);
  programaPrincipal.dibujar();
}

void keyPressed() {
  programaPrincipal.teclaPresionada();
}

void mousePressed() {
  programaPrincipal.mousePresionado();
}
