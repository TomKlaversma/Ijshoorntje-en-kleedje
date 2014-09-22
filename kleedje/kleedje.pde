import processing.pdf.*;

// VARIABLES

int aantalBanenH = 40;
int aantalBanenV = 30;

// kleuren verticaal en horizontaal
int[] hColors = {#df3a31, #c7b8db, #3f509f, #f6d0a8, #5f961d, #bfd8d9};
int[] vColors = {#e33829, #937cb9, #354b9d, #e77c1e, #5f961d, #66c6c7};

// Bereken hoe breed de stroken moeten zijn
float breedteH;
float breedteV;
float posX;
float posY;
void setup() {
  size(1100, 810, PDF, "kleedje.pdf");
  background(255);


  breedteH = width / (aantalBanenH * 2);
  posX = breedteH / 2;
  
  breedteV = height / (aantalBanenV *2);
  posY = breedteV /2;
  
  for (int j = 0; j < 7; j++){
    for (int i = 0; i < vColors.length; i++) {
      stroke(vColors[i]);
      fill(vColors[i]);
      rect(posX, 0, breedteH, height);
      posX += breedteH * 2;
    }
  }
  
  for(int j = 0; j <7; j++){
    for (int i = 0; i < hColors.length; i++) {
      stroke(hColors[i]);
      fill(hColors[i]);
      rect(0, posY, width, breedteH);
      posY += breedteV * 2;
    }
  }
}

