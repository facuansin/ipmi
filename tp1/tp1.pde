//Facundo Ansin
//legajo: 93054/5
//Comision 1
//Trabajo Practico n1

PImage canario;
void setup(){
  size(800,400);
  background(#364B4A);
  canario = loadImage("canario.jpeg");
}

void draw(){
  stroke(82,72,53);
  strokeWeight(40);
  line(400,355,798,330);
                                  //ramas
  stroke(103,92,72);
  strokeWeight(90);
  line(400,380,800,450);
  
  
  image(canario, 0, 0, 400, 400);  //imagen

  noStroke();
  
  fill(255, 255, 0);
  ellipse( 600, 250, 210, 180);      //cuerpo
  ellipse( 580, 250, 210, 180);     
  ellipse( 620, 250, 210, 180);
 
  ellipse( 650, 150, 110, 70);
  stroke(255,255,0);
  strokeWeight(11);
  line(545,170,630,122);      //cabeza
  circle(590, 160, 20);
  line(690, 230, 700, 150);
  circle(680,185,20);
  
  triangle(500,297,454,245,486,258);
  triangle(500,277,454,225,486,238);  //cola
  triangle(500,257,454,205,486,218);
  
  fill(0);
  ellipse(650,148,23,17);  //ojo
  stroke(#E5E8C2);
  triangle(696,149,710,162,683,163);   
  stroke(0);                              //pico
  strokeWeight(0.8);
  line(725,167,699,163);
  
  strokeWeight(7);
  stroke(255,120,0);
  line(537,335,539,356);
  line(537,335,557,351);         //pata izq
  line(537,335,525,351);        
  
  line(666,334,695,345);
  line(666,334,685,357);        //pata derecha
  line(666,334,670,355);
  
  println(mouseX);
  println(mouseY);
}
