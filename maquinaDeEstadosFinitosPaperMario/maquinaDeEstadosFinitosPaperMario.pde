//Estados Possíveis
final int PARADO = 0;
final int MARTELANDO = 1;

//Estado Inicial
int estadoMario = PARADO;

//Imagens
PImage imgParado, imgMartelando;

//Configuração inicial
void setup() {
  size(600, 600);
  imgParado = loadImage("parado.png");
  imgMartelando = loadImage("martelando.png");
}

//Loop Principal
void draw() {
  mostraMario(estadoMario);
  MEF();
  println(estadoMario);
}

//Mostra Imagens
void mostraMario(int estado){
  background(255);
  if (estado == PARADO){
    image(imgParado, 150, 150, 300, 300);
  } else if (estado == MARTELANDO){
    image(imgMartelando, 125, 150, 300, 300);
  }
}

//Máquina de Estados Finitos (MEF)
void MEF() {
  if (keyPressed == true) {
    if (key == ' ') {
      estadoMario = MARTELANDO;
    }
  } else {
    estadoMario = PARADO;
  }
}
