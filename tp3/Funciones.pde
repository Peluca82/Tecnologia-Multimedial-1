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
          circulos[a][b] = circulos[colordist][b] + colordifer;
        }
      }
    }
  }
}


void Ciculos() {
  for ( int i = 0; i < 4; i++) {
    colorcirc(i);
    ellipse(width*ejeX[i], width*ejeY[i], width/2, width/2);
  }
}


void colorcirc (int i) {
  fill(circulos[i][0], circulos[i][1], circulos[i][2]);
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


void ejes () {
  for ( int i = 0; i < 4; i++) {
    if ( i == 0 || i == 2) {
      ejeX [i] = 0.25;
    } 
    if ( i == 1 || i == 3) {
      ejeX [i] = 0.75;
    }
    if ( i == 0 || i == 1) {
      ejeY [i] = 0.25;
    } 
    if ( i == 2 || i == 3) {
      ejeY [i] = 0.75;
    }
  }
}

void pantalla0 () {
  if ( juego == 0) {
    if (frameCount%15 == 0) {
      background(random(0, 255), random(0, 255), random(0, 255));
    }
    textSize(50);
    fill(0);
    text("GUESS THE COLOR", width/2, 100);
    textSize(20);
    fill(25);
    rect(width/2, width/2, 200, 50);
    rect(width/2, (width/2) +75, 200, 50);
    fill(255);
    text("jugar", width/2, 255);
    text("creditos", width/2, 330);
  }
}

void pantalla1 () {
  if ( errores < 4 && juego == 1) {
    background(0);
    Ciculos();
    fill(255);
    text("Score: " + puntos, 50, 25);
    text("nivel: " + nivel, 450, 25);
    text("errores: " + errores, width/2, 25);
  }
}

void pantalla2 () {
  if (juego == 2) {
    background(0);
    text("Santiago Argañaras", width/2, y);
    text("Legajo 91334/2", width/2, y + 25);
    text("trabajo practico N°3", width/2, y + 50);
    text("GRACIAS :)", width/2, y + 400);
    if ( y > -150) {
      y--;
    }
    text("menu", 450, 475);
  }
}

void pantalla3() {
  if ( juego == 3) {
    background(0);
    textSize(50);
    fill(0, 255, 0);
    text("GANASTE", width/2, height/2);
    textSize(20);
    text("menu", 450, 475);
  }
}

void mousePressed() {
  if ( juego == 0) {
    if (mouseX > 150 && mouseX < 350 && mouseY > 225 && mouseY < 275) {
      juego = 1;
    }
    if (mouseX > 150 && mouseX < 350 && mouseY > 300 && mouseY < 350) {
      juego = 2;
    }
  }
  if ( juego == 2) {
    if (mouseX > 420 && mouseX < 480 && mouseY > 455 && mouseY < 485) {
      juego = 0;
      y = 600;
    }
  }
  if ( juego == 3) {
    if (mouseX > 420 && mouseX < 480 && mouseY > 455 && mouseY < 485) {
      juego = 0;
      y = 600;
    }
  }
  if ( juego == 1) {
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
      text("GAME OVER", width/2, height/2);
    }
    if ( puntos == 50){
      juego = 3;
    }
  }
}

void keyPressed() {
  if (key == 'r') {
    juego = 0;
    puntos = 0;
    errores = -1;
    nivel = 1;
    y = 600;
  }
}
