int rango = 99;//Número de personas

int w = 1440;//Ancho de la pantalla
int h = 900;//Alto de la pantalla
int resultado = 0;

void setup() {
  size(w, h);
  PFont f = loadFont("SansSerif-250.vlw");
  textFont(f);
}

void draw() {
  background(#cc0000);//Fondo rojo
  int r;//El número que se mostrará
  if (resultado == 0) {
    r = numero();//Número al azar
  } else {
    r=resultado;//Parar y mostrar
  }
  fill(#ffff00);//Números amarillos
  text(r, w/2 - 300/2, h/2 + 200/2);//Mostrando el número
}

void mouseClicked() {
  if (resultado == 0) {
    resultado = numero();//Decidir el número al azar
    println("Resultado: " + resultado);
  } else {
    resultado = 0;//Volverán a salir números nuevos sin parar
  }
}

int numero(){
  return int(random(rango)) + 1;
}
