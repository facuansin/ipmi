void triangulo(int x, int y, int x2, int y2, int x3, int y3){
   translate(200, 0);
  push();
  for(int i = 0; i < 18; i++){
    rotate(calcularRotacion(200, 100));
  triangle(x+i*5, y-i*3, x2, y2+i*7, x3-i*5, y3-i*3);
  if(i % 2 == 0){
   fill(negro);
   }else{
     fill(blanco);
}
  }
  pop();
}

void triangulo2(int x, int y, int x2, int y2, int x3, int y3){
   translate(200, 50);
  push();
  for(int i = 0; i < 18; i++){
    rotate(calcularRotacion(200, 100));
  triangle(x+i*5, y+i*3, x2, y2-i*7, x3-i*5, y3+i*3);
  if(i % 2 == 0){
   fill(negro);
   }else{
     fill(blanco);
}
  }
  pop();
}

float calcularRotacion(float divisorX, float divisorY) {
  return radians(mouseX / divisorX - mouseY / divisorY);
}
