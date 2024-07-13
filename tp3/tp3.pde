//Facundo Ansin
//legajo: 93054/5
//comision 1
//recuperatorio del tp3
//vinculo al video: https://www.youtube.com/watch?v=8tftHeb7Or4&ab_channel=FacundoAnsin

PImage ilusionoptica;
color negro = color(0);
color blanco = color(255); 
color color3 = color(0);
boolean barraApretada = false;

void setup(){
  size(800,400);
  ilusionoptica = loadImage("ilusionoptica.png");
}
void draw(){
  background(color3);
    if(mousePressed == true) {
    fill(blanco);
    float mx = map(mouseX, 0, width, 0, 255);          //si el M1 se presiona y se mueve, el color de los triangulos cambiara
    float my = map(mouseY, 0, height, 0 ,255);
    background(mx, 0, my);
    negro = color(mx,0,my);
    }else{
      background(color3);
      negro = color3;
  }
  noStroke();
  
  for(int i = 0; i < 5; i++){
    for(int d = 0; d < 5; d++){
    push();
    translate(-200+i*200+d*200/2, 150+d*200);
  triangulo(-100, 50, 0, -150, 100, 50);                   //for anidado para dibujar todos los triangulos
  pop();
  push();
    translate(-100+i*200+d*200/2, 0+d*200);
  triangulo2(-100, -50, 0, 150, 100, -50);
  pop();
  }
  }
  
  
  image(ilusionoptica, 0, 0, 400, 400);
  
}

void keyPressed(){if(key == ' '){
     barraApretada = true;
     
     if(negro == 0){
       negro = 255;
     }else{
       negro = 0;
     }
     
     if(blanco == 255){                          //si la barra espaciadora es presionada, el blanco y negro se intercambian
       blanco = 0;
     }else{
       blanco = 255;
     }
     if(color3 == 0){
       color3 = 255;
     }else{
       color3 = 0;
     }
   }
   }
   void keyReleased(){
     if(key == ' '){
       barraApretada = false;
     }
   }
   
