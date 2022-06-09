void Dibujarfondo(){
  if(fondo == true){
   for(int i=0;i<cant;i++){
     fill(255,0,0);
     text(round(frames),5,30);
     ColorFondo(i);
     rect(ancho*i,0,ancho,height);
   }
  } else {
    background(50);
    fill(255,0,0);
    text(round(frames),5,30);
  }
}

void ColorFondo (int i){
  if(i%2 == 0){
    fill(0);  
  } else {
    fill(255);
  }
}

void Cuadrados(){
  if(rect == true){
    fill(255,0,0,200);
    rect(posX,325,ancho*4,50);
  }
  fill(color1); 
  rect(posX,325,ancho*4,25);
  fill(color2); 
  rect(posX,375,ancho*4,25); 
}

void Movercuadrados(){
 if(mov == true){
   if (mover == true){
     if(frameCount%frames == 0){
       posX++;
     }
    if (posX == width - ancho*4){
      mover = false;
    }
  } 
  if (mover == false){
    if(frameCount%frames == 0){
       posX--;
     }
    if( posX == 0){
      mover = true;
    }
  }
 }
}

void mousePressed(){
    mouse++;
  if(mouse%2 == 0){
    color1 = color(random(0,255),random(0,255),random(0,255));;
    color2 = color(random(0,255),random(0,255),random(0,255));;
  } else {
    color1 = 255;
    color2 = 0;
  }
}

void keyPressed(){
  if(key == 'u'){
    rect = !rect;
  }
  if(key == 'r'){
    posX = 1;
    if(fondo == false){
      fondo = true;
    }
    color1 = 255;
    color2 = 0;
    frames = 1;
  }
  if(key == 'p'){
    mov = !mov;
  }
  if(key == 'f'){
    fondo = !fondo;
  }
  if(key == 'm'){
    frames ++;
  }
  if(key == 'n'){
    frames --;
  }
}
