//Facundo Ansin
//legajo 93054/5
//Comision 2

String estado;
int c, d, e, f, g;
float posY, posY2, posX, posX2;
float vel1, vel2, vel3, vel4, vel5, vel6;
color colorcillo;
color colorillo;
PFont superFuente;
PImage walterNjesse;
PImage brba;
PImage heisenbergg;
PImage walterTeaching;
PImage cooking;
PImage waltNgus;
PImage hsnbrg;
PImage waltJessebald;
PImage brbaFinal;

void setup(){
  
  //carga de imagenes y fuente
  walterNjesse = loadImage("walterNjesse.jpg");
  brba = loadImage("brba.png");
  heisenbergg = loadImage("heisenbergg.png");
  walterTeaching = loadImage("walterTeaching.jpeg");
  cooking = loadImage("cooking.jpeg");
  waltNgus = loadImage("waltNgus.jpg");
  hsnbrg = loadImage("hsnbrg.jpeg");
  waltJessebald = loadImage("waltJessebald.jpeg");
  brbaFinal = loadImage("brbaFinal.jpeg");
  superFuente = loadFont("fuentecita.vlw");
  textFont(superFuente);
  
  size( 640, 480 );
  textAlign( CENTER, CENTER);
  textSize( 50 );
  noCursor();
  fill( 200 );
  estado = "menu";
  
  //asignacion de valores
  posY = -240;
  posY2 = 500;
  posX = -1000;
  posX2 = 200;
  e = 1;
  vel1 = 3;
  vel2 = 7;
  vel3 = 14;
  vel4 = 4;
  vel5 = 1;
  colorcillo = color(#2A6A25);
  colorillo = color(#173B14);
  
  frameRate( 60 );
}

void draw(){
  
  //Pantalla de menu
  if( estado.equals("menu")){
    float imageX = width/2 - walterNjesse.width/2;
    float imageY = height/2 - walterNjesse.height/2;
    image(walterNjesse, imageX+150, imageY+95, 900, 500);
    image(brba, 160, posY, 300, 300);
    
    //dibujo del boton Empezar
    fill(colorcillo);
    rect(200, 370, 200, 50);
    fill(255);
    textSize(35);
    stroke(#173B14);
    strokeWeight(1.5);
    text("Empezar", 300,392);
    
    //animacion del titulo
    posY = posY + vel1;
    
    if(posY >= 50){
      vel1 = 0;
    }
    
    //Pantalla 1
  }else if(estado.equals("p1")){
    background(200);
    image(walterTeaching, 0, 0);
    fill(#2A6A25, 170);
    stroke(#173B14);
    strokeWeight(1.5);
    rect(14, posY2, 430,130);
    textAlign(LEFT);
    textSize(25);
    fill(255);
    text("Breaking Bad sigue la transformación \n de Walter White, un profesor de \n química aparentemente normal, en \n un despiadado narcotraficante.", posX, 300);
    
    posY2 = posY2 - vel2;
    
    if( posY2 <= 270 ){
      vel2 = 0;
    }
    
    posX = posX + vel3;
    
    if(posX >= 20 ){
      vel3 = 0;
    }
    //temporizador
      c++;
      
      if( c >= 450 ){ //450( 7 segundos y medio)
        estado = "p2";
        c = 0;
      }

      //pantalla 2
  }else if(estado.equals("p2")){
    background(200);
    image(cooking, -70, 0, 750, 480);
    fill(#2A6A25, d);
    stroke(#173B14, e);
    strokeWeight(1.5);
    rect(posX2, 270, 380,160);
    fill(255, e);
    text(" Después de ser diagnosticado con \n cáncer de pulmón, Walter se une \n a un exalumno, Jesse Pinkman, \n para fabricar y vender \n metanfetaminas de alta calidad.", -posX2+495, 300);
    
    posX2 = posX2 + vel5;
    
    if( posX2 >= 245 ){
      vel5 = 0;
    }
    
    d += vel4;
    if( d >= 170){
      d = 170;
    }
    e += vel4+2;
    if( e >= 255){
      e = 255;
    }
    //temporizador
      c++;
      
      if( c >= 300 ){ //300 ( 5 segundos)
        estado = "p3";
        c = 0;
        d = 0;
        e = 0;
  }
  
  //pantalla 3
  }else if(estado.equals("p3")){
    background(0);
    image(waltNgus, -50, 0, 750, 480);
    fill(0, c*10.2);
    textAlign(CENTER,CENTER);
    textSize(d);
    text("Lo que comienza como un intento \n desesperado por asegurar el \n futuro financiero de su familia,", 320, 150);
    
    c ++;
    d = c;
    if( d >= 25 ){
    d = 25;
    }
    
    if(c > 75 ){
      e++;
      textSize(e);
      fill(0, e*10.2);
      text("se convierte rápidamente en un \n viaje oscuro y peligroso hacia \n el mundo del crimen.", 320, 320);
    }
    if( e >= 25 ){
      e = 25;
    }
    
    //temporizador
    if( c >= 280 ){ //280 (4.66 segundos)
        estado = "p4";
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g = 0;
      }
      
      //pantalla 4
  }else if(estado.equals("p4")){
    background(0);
    image(hsnbrg, -60, 0, 760, 480);

    textAlign(LEFT, LEFT);
    stroke(#173B14, e);
    strokeWeight(1.5);
    fill(#2A6A25, d);
    rect(35, 280, 430, 165);
    fill(e);
    text(" Walter enfrenta dilemas morales \n cada vez más complejos y se \n transforma en el temido Heisenberg, \n un hombre capaz de cualquier cosa \n por poder y control.", 40, 310);
    
    c++;
    d = c*4;
    e = c*4;
    
    if( e >= 255){
      e = 255;
    }
    if(d >= 170){
      d = 170;
    }
    
    //temporizador
    if( c >= 250 ){ //250 ( 4.1 segundos)
      estado = "p5";
      c = 0;
      d = 0;
      e = 0;
      f = 0;
      g = 0;
    }
    
    //pantalla 5
  }else if(estado.equals("p5")){
    image(waltJessebald, -10, 0, 690, 480);
    
    fill(#2A6A25, 170);
      stroke(#173B14);
      strokeWeight(1);
     rect(20, 320, 595, 100);
      
    fill(255);
    textAlign(CENTER,CENTER);
    textSize(e);
    text("Una serie llena de giros inesperados, dilemas éticos y \n personajes inolvidables que desafían las normas de \n la televisión tradicional.", 320, 370);
    c++;
    e = c;
    d = c;
    if(e >= 25){
      e = 25;
      textSize(d);
      fill(255, 255-d*5);
      text("Una serie llena de giros inesperados, dilemas éticos y \n personajes inolvidables que desafían las normas de \n la televisión tradicional.", 320, 370);
    
    //temporizador
    if(c >= 250){ //250 (4.1 segundos)
      estado = "p6";
      c = 0;
      e = 0;
      d = 0;
      colorcillo = color(#2A6A25);
      colorillo = color(#173B14);
    }
    }
    
    //pantalla 6
  }else if(estado.equals("p6")){
    image(brbaFinal, -120, 0, 900, 480);
    stroke(#173B14);
    strokeWeight(1.5);
    fill(colorcillo);
   rect(95, 220, 215, 50);
   fill(255);
   textSize(30);
   text("Reiniciar",200, 245);                  //boton de reinicio
   fill(0);
   text("Gracias por ver!", 200, 150);
   fill(0, d);
   rect(0, 0, 640, 480);
   c++;

   if(d >= 1){
     d = c*5;
   }
   
   //reinicio de valores
   if(d >= 400){
     estado = "menu";
     posY = -240;
     posY2 = 500;
     posX = -1000;
     posX2 = 200;
     c = 0;
     e = 1;
     vel1 = 3;
     vel2 = 7;
     vel3 = 14;
     vel4 = 4;
     vel5 = 1;
     colorcillo = color(#2A6A25);
     colorillo = color(#173B14);
   }
  }
  
 // println(d);
  //cursor de Heisenberg
  image(heisenbergg,mouseX-76,mouseY-78, 150, 150);
}

void mouseMoved(){
  if(estado.equals("menu")){
    if(mouseX >= 200 & mouseX <= 400 & mouseY >= 375 & mouseY<= 425){

      colorcillo = color(#173B14);                                     //efecto del boton Empezar
    }else{
      colorcillo = color(#2A6A25);
  }
}

if(estado.equals("p6")){
    if(mouseX >= 95 & mouseX <= 312 & mouseY >= 223 & mouseY<= 273){

      colorcillo = color(#173B14);                                      //efecto del boton Reiniciar
    }else{
      colorcillo = color(#2A6A25);
  }
}

}

void mousePressed(){
  if(estado.equals("menu")){
    if(mouseX >= 200 & mouseX <= 400 & mouseY >= 375 & mouseY<= 425){          //boton empezar
      estado = "p1";
    }
  }
  
  if(estado.equals("p6")){
    if(mouseX >= 95 & mouseX <= 312 & mouseY >= 223 & mouseY<= 273){            //boton reiniciar
      c = 0;
      d = 1;
}
}
}
