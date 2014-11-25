int rango = 100;//Número de personas

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
    r = int(random(rango)) + 1;//Número al azar
  } else {
    r=resultado;//Parar y mostrar
  }
  println(r);
  fill(#ffff00);
  text(r, w/2 - 300/2, h/2 + 200/2);
}

void mouseClicked() {
  if (resultado == 0) {
    resultado = int(random(rango)) + 1;//Número al azar
  } else {
    resultado = 0;
  }
}

