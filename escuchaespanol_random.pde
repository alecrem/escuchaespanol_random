int rango = 99;//Número de personas

int w = 1280;//Ancho de la pantalla 1440 1920
int h = 720;//Alto de la pantalla 900 1080
int resultado = 0;

void setup() {
  size(1440, 900);
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

void step() {
  if (resultado == 0) {
    resultado = numero();//Decidir el número al azar
    print(resultado + ", ");
  } else {
    resultado = 0;//Volverán a salir números nuevos sin parar
  }
}
void mouseClicked() {
  step();
}
void keyPressed() {
  step();
}

int numero(){
  return int(random(rango)) + 1;
}