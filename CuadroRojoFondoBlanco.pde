// Declaro variable globales 
int posx=26;
int direccion = 3;


void setup(){
  size(500,500);
  background(255);
}

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
