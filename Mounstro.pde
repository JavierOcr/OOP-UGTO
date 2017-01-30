
//"Mounstro" Describe una versión simplificada de; Monstruo/criatura del TCG Yu-gi-oh.
//Desarrollado por los alumnos del grupo B de la clase de Programación Orientada a Objetos
Mounstro magoObscuro;
int numero = 1; 
String Elemento[] = {"Aire","Agua","Tierra","Fuego"}; 


void setup()
{
  magoObscuro = new Mounstro("Mago Obscuro",7,2500,2000,1);
}


void draw(){
  println(magoObscuro.estrellas);
}


class Mounstro {
  String nombre;
  int estrellas;
  int ataque;
  int defensa;
  int elemento;
  
  Mounstro(String nombre_, int estrellas_, int ataque_,int defensa_, int elemento_){
    nombre = nombre_;
    estrellas = estrellas_;
    ataque = ataque_;
    defensa = defensa_;
    elemento = elemento_;
  }
}
