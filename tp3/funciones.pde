void rombo ( int x, int y, int a, int l){ 
    int tam = 70; 
    int g= 10;
    push();
    rectMode(CENTER);
    rotate(radians(45));
    rect( x, y, a, l);
    fill(colorcillo);
    rect( x, y, tam, g);
    fill(colorillo);
    rect( x, y+10, tam, g);
    fill(colorcillo);
    rect( x, y+20, tam, g);
    fill(colorillo);
    rect( x, y-10, tam, g);
    fill(colorcillo);
    rect( x, y-20, tam, g);
    pop();
}
