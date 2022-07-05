void colores() {
  for ( int i = 0; i < 4; i++) {
    if (i == colordist) {
      for (int l = 0; l < 3; l++) {
        circulos[i][l] = floor(random(255));
      }
    }
    for ( int a = 0; a < 4; a++) {
      if ( a != colordist) {
        for ( int b = 0; b < 3; b++) {
          circulos[a][b] = circulos[colordist][b] - colordifer;
        }
      }
    }
  }
}

void Ciculos() {
  fill(circulos[0][0], circulos[0][1], circulos[0][2]);
  ellipse(width/4, width/4, width/2, width/2);
  fill(circulos[1][0], circulos[1][1], circulos[1][2]);
  ellipse(width*0.75, width/4, width/2, width/2);
  fill(circulos[2][0], circulos[2][1], circulos[2][2]);
  ellipse(width/4, width*0.75, width/2, width/2);
  fill(circulos[3][0], circulos[3][1], circulos[3][2]);
  ellipse(width*0.75, width*0.75, width/2, width/2);
}

void detectarDificultad() {
  if (puntos == 5) {
    colordifer = colordifer  -10;
    nivel++;
  }
  if (puntos == 10) {
    colordifer = colordifer  -10;
    nivel++;
  }
  if (puntos == 15) {
    colordifer = colordifer - 10;
    nivel++;
  }
  if (puntos == 20) {
    colordifer = colordifer - 10;
    nivel++;
  }
  if (puntos == 25) {
    colordifer = colordifer - 10;
    nivel++;
  }
  if (puntos == 40) {
    colordifer = colordifer - 10;
    nivel++;
  }
  if (puntos == 50) {
    colordifer = colordifer - 5;
    nivel++;
  }
}

void clickCorrecto () {
  if ( mouseX < width/2 && mouseY < height/2) {
    sector = 0;
  }
  if ( mouseX > width/2 && mouseY < height/2) {
    sector = 1;
  }
  if ( mouseX < width/2 && mouseY > height/2) {
    sector = 2;
  }
  if ( mouseX > width/2 && mouseY > height/2) {
    sector = 3;
  }
}

void inicio (){
  
}
