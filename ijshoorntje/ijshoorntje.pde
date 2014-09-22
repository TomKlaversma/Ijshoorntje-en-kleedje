import processing.pdf.*;

float posX, posY;
float detail = 255;
float startColor = 0;

void setup(){
  size(400, 800,PDF, "icecone.pdf");
  smooth();
  posX = 0;
  posY = height/2 - width/2 +100;
}

void draw(){
  
  background(255);
  
  // maak bolletjes
  for(int i = 0; i<detail;i++){
    stroke(startColor);
    fill(startColor);

    ellipse(width/2,width/2,((width-20)-i)* random(0.88, 0.99), ((width-20)-i)* random(0.88, 0.99));
    startColor++;
  }
 
  // maak de hoorn 
  startColor = 0;
  
  for(int i = 0; i<detail;i++){
    stroke(startColor);
    fill(startColor);
    //          links   midden  rechts
    // triangle(x1, y1, x2, y2, x3, y3);
    triangle(20 + 0.9 * i,       posY, 
             width/2,            height/2+posY, 
             width - 20 - 0.9*i, posY);
    startColor+= 2;
    
  }
  
  startColor = 0;
  exit();
}
