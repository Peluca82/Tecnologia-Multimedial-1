int pantalla,Y,frames;
PImage imagen1,imagen2,imagen3,imagen4,imagen5,LOOP;
PFont fuente;
float colour;


void setup(){
 size(960,540);
 frames = 1;
 pantalla = 1;
 colour = random (186 , 255);
 Y = 650;
 textSize(30);
 noFill();
 strokeWeight(4);
 imagen1 = loadImage ("TITULO.png");
 imagen2 = loadImage ("CREDITOS3.png");
 imagen3 = loadImage ("CREDITOS2.png");
 imagen4 = loadImage ("Flecha1.png");
 imagen5 = loadImage ("Flecha2.png");
 LOOP = loadImage ("Frames/Frame" + frames + ".jpg");
 fuente = createFont("OCR-A.ttf",40);
 textFont(fuente);
 textAlign(CENTER);
}                                                          


void draw(){
  image(LOOP,0,0);
  dibujarFondo();
  noFill();
  stroke(190,colour,191);
  image(imagen4,885,245,50,50);
  image(imagen5,25,245,50,50);
  ellipse(910,height/2,50,50);
  ellipse(50,height/2,50,50);
  fill(190,245,191);
  if (pantalla == 1){
   text("written and directed by\nTHE WACHOSKI BROTHERS",480,Y);
   if(Y <= -75){
    pantalla++;
    Y = 575;
   }
  }
  else if(pantalla == 2){
   image(imagen2,0,Y);
   if(Y <= -1200){
    pantalla++;
    Y = 575;
   }
  }
  else if(pantalla == 3){
   text("KEANU REEVES / neo",480,Y);
   if(Y <= -75){
    pantalla++;
    Y = 575;
   }
  }
  else if(pantalla == 4){
   text("LAURENCE FISHBURNE / morpheus",480,Y); 
   if(Y <= -75){
    pantalla++;
    Y = 575;
   }
  }
  else if(pantalla == 5){
   text("CARRIE-ANNE MOSS / trinity",480,Y); 
   if(Y <= -75){
    pantalla++;
    Y = 575;
   }
  }
  else if(pantalla == 6){
   image(imagen3,0,Y); 
   if(Y <= -300){
    pantalla++;
    Y = 575;
   }
  }
  else if(pantalla == 7){
   text("a WARNER BROS. presentation",480,Y);
   if(Y <= -75){
    pantalla++;
    Y = 575;
   }
  }
  else if(pantalla == 8){
   image(imagen1,180,200); 
  }
  Y = Y - 1;
  frames ++;
  if(dist(mouseX, mouseY, 50, height/2) < 25 || dist(mouseX, mouseY, 910, height/2) < 25){
   cursor(HAND);
  }else{
   cursor(ARROW);
  }
}



void mouseClicked(){
  if (dist(mouseX, mouseY, 910, height/2) < 25) {
   pantalla++;
   Y = 575;
    if(pantalla > 8){
     pantalla = 1;
    }
    if(pantalla == 0){
     pantalla = 8;
    }
  }
  if (dist(mouseX, mouseY, 50, height/2) < 25) {
   pantalla--;
   Y = 575;
    if(pantalla > 8){
     pantalla = 1;
    }
    if(pantalla == 0){
     pantalla = 8;
    }
  }
}



void dibujarFondo() {
  if(frameCount%60 == 0){
   frames++;
  }
  if (frames > 1125) {
   frames = 1;
  }
  LOOP = loadImage ("Frames/Frame" + frames + ".jpg");
}
