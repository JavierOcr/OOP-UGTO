
ArrayList <Particula> Particulas;

void setup(){
  size(500,500);
  Particulas = new ArrayList<Particula>();
  for (int i =0; i<200; i++){
    int aa = int(random(100));
    Particulas.add(new Particula(aa,aa,int(random(255)),int(random(255)),int(random(255)),1+int(random(2)),int(random(TWO_PI)),int(random(500)),int(random(500))));
  }
}

void draw(){
  background(255);
 for (Particula p:Particulas){
   p.mostrar();
   p.movimiento();
 }
}


class Particula{
  float theta = random(10);
  int ancho;
  int altura;
  int r,g,b;
  int velocidad;
  float direccion;
  float px, py;
 
  Particula(int ancho_, int altura_, int r_, int g_, int b_, int velocidad_, float direccion_, int px_, int py_)
  {
    ancho = ancho_;
    altura = altura_;
    r= r_;
    g= g_;
    b= b_;
    velocidad = velocidad_;
    direccion = direccion_;
    px= px_;
    py = py_;
  }
  
  
  void mostrar(){
    theta +=0.05;
    // Dibuja la particula.
    noStroke();
    ellipseMode(CENTER);
    fill(r,g,b,100);
    ellipse(px,py,ancho+sin(theta)*50,altura+sin(theta)*50);
    fill(0);
    ellipse(px,py,3,3);
  }
  
  void movimiento(){
    px = px + cos(direccion)*velocidad;
    py = py + sin(direccion)*velocidad;
    
    if (px<0){
      direccion +=  PI;
      px =0;
    }
    
    if (px>500){
      direccion += PI;
      px =500;
    }
    
    if (py<0){
      direccion *=  -1;
      py =0;
    }
    
    if (py>500){
      direccion *= -1;
      py =500;
    }
    
  }
}
