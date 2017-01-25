/*
Un cuadro rojo sobre fondo blanco moviéndose de un lado al otro.
*/

// Declaro variable globales 
int posx=26;
int direccion = 3;

//Codigo que se ejecuta una sola vez al principio del programa
void setup(){
  size(500,500);
  background(255);
}

//Codigo que se ejecuta una y otra vez mientras el programa esté en ejecución
void draw(){
  background(255);
  fill(255,0,0);
  noStroke();
  posx += direccion;
  // if (llega al limite)
  //{se regresa}
  if (posx>= 475)
  {
    direccion *= -1;
  }
  
  if (posx <= 25){
    direccion *=-1;
  }
  
  rectMode(CENTER);
  rect(posx,250,50,50);
}
