int range = 38;

void setup() {
  size(1440, 900);
  background(#cc0000);
  int r = int(random(range)) + 1;
  println(r);
  fill(#ffff00);
  PFont f = loadFont("SansSerif-250.vlw");
  textFont(f);
  text(r, 500, 400);
}

