//import processing.sound.*;
//SoundFile fileTrack;

ProgramaPrincipal programaPrincipal;

void setup(){
  size(500,500);
  programaPrincipal = new ProgramaPrincipal();
  //fileTrack = new SoundFile(this, "bandasonora.mp3");
  //fileTrack.amp(0.2);
  //fileTrack.play();
}

void draw(){
  background(200);
  programaPrincipal.dibujar();
}

void keyPressed(){
  programaPrincipal.TeclaPresionada();
}

void mousePressed(){
  //fileTrack.pause();
  programaPrincipal.MousePresionado();
}
