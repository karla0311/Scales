void setup() {
  size(500, 500);  //feel free to change the size
  //noLoop(); //stops the draw() function from repeating
  frameRate(3);
}

void draw() {
  //changes background color to shades of grey
  int r = (int)(Math.random()*230);
  background(r,r,r);
  //places scales in pattern 
  for(int y =0; y < 600; y +=40){
    for(int x = 0; x<600; x += 60){
      scale(x,y);   
    }
  }
}

void scale(int x, int y) {
  fill(#ffffff);
  //right wing
  beginShape();
  curveVertex(x+20,y+5);
  curveVertex(x+20,y+5);
  curveVertex(x+25,y-5); 
  curveVertex(x+23,y+10);
  curveVertex(x+30,y+15);
  curveVertex(x+10,y+20);
  curveVertex(x+10,y+20);
  endShape();
  //left wing
  beginShape();
  curveVertex(x-20,y+5);
  curveVertex(x-20,y+5);
  curveVertex(x-25,y-5); 
  curveVertex(x-23,y+10);
  curveVertex(x-30,y+15);
  curveVertex(x-10,y+20);
  curveVertex(x-10,y+20);
  endShape();
  //when the mouse is pressed down, the frame rate increases to 13fps 
  //when the mouse is not held down the frame returns to 3fps
  if(mousePressed){
    frameRate(13);
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  else{
    frameRate(3);
  }
  //heart
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  beginShape();
  curveVertex(x,y); 
  curveVertex(x,y);
  curveVertex(x+10,y-5);
  curveVertex(x+20,y+5); 
  curveVertex(x,y+25); 
  curveVertex(x-20,y+5);
  curveVertex(x-10,y-5);
  curveVertex(x,y);
  curveVertex(x,y);
  endShape();
}
