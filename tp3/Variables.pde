void variables () {
  ellipseMode(CENTER);
  rectMode(CENTER);
  textAlign(CENTER);
  textSize(20);
  puntos = 0;
  colordifer = 70;
  nivel = 1;
  errores = -1;
  y = 600;
  juego = 0;
  colordist = floor(random(0, 3));
  colordistant = colordist;
  circulos = new int [4][3];
  ejeX = new float [4];
  ejeY = new float [4];
  colores();
  ejes ();
}
