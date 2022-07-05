int [][] circulos; 
int colordist; 
int cualdist; 
int puntos; 
int colordifer; 
int nivel; 
int sector;
int errores;
int colordistant;

void setup() {
  size(500, 500);
  ellipseMode(CENTER);
  puntos = 0;
  colordifer = 70;
  nivel = 1;
  errores = 0;
  colordist = floor(random(0, 3));
  colordistant = colordist;
  textSize(20);
  circulos = new int [4][3];
  colores();
}

void draw() {
  if ( errores < 4) {
    background(0);
    Ciculos();
    fill(255, 0, 0);
    text("Score: " + puntos, 10, 25);
    text("nivel: " + nivel, 420, 25);
    text("errores: " + errores, width/2 - 45, 25);
  }
}

void mousePressed() {
  clickCorrecto();
  if ( sector == colordist) {
    puntos++;
    colordistant = colordist;
    colordist = floor(random(0, 4));
    colores();
    detectarDificultad();
  }
  clickCorrecto();
  if ( sector != colordistant && errores < 4) {
    errores++;
  }
  if ( errores == 4) {
    background(0);
    textSize(50);
    fill(255, 0, 0);
    text("GAME OVER", 110, height/2);
  }
}
