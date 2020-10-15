//PShape snow;
//int i;
void setup() {
  size(1400, 900, P3D);
}

float yoff = 0.0;

void draw() {
  background(0, 7, 110);
  
  //shape(s, 25, 25);
  
  //stroke(255);
  //if (mousePressed == true) {
  //  line(mouseX, mouseY, pmouseX, pmouseY);
  //  strokeWeight(0);
  //}
  
  if (mousePressed == true) {
    stroke(255);
  } else {
    stroke(0);
  }
  line(mouseX, mouseY, pmouseX, pmouseY);
  
  //noSmooth();
  stroke(255);
  point(958, 300);
  point(850, 28);
  point(350, 75);
  point(151, 290);
  point(589, 447);
  point(385, 541);
  point(619, 148);
  point(409, 88);
  point(764, 840);
  point(576, 507);
  point(198, 671);
  point(1068, 166);
  point(1272, 146);
  point(1301, 341);

  
  fill(255);
  // We are going to draw a polygon out of the wave points
  beginShape(); 
  
  float xoff = 0;       // Option #1: 2D Noise
  //float xoff = yoff; // Option #2: 1D Noise
  
  // Iterate over horizontal pixels
  for (float x = 0; x <= width; x += 10) {
    // Calculate a y value according to noise, map to 
    float y = map(noise(xoff), 0, 1, 150, 25); // Option #1: 2D Noise
    //float y = map(noise(xoff), 0, 1, 200,300);    // Option #2: 1D Noise
    
    // Set the vertex
    vertex(x, y + 600); 
    // Increment x dimension for noise
    xoff += 0.05;
  }
  // increment y dimension for noise
  yoff += 0.01;
  vertex(width, height);
  vertex(0, height);
  endShape(CLOSE);
  
  pushMatrix();
  translate(width*0.5, height*0.3);
  rotate(frameCount / -200.0);
  star(0, 30, 5, 70, 3); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.9, height*0.5);
  rotate(frameCount / -100.0);
  star(0, 0, 30, 70, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.2, height*0.3);
  rotate(frameCount / -200.0);
  star(0, 0, 40, 70, 10); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.75, height*0.3);
  rotate(frameCount / -100.0);
  star(0, 0, 25, 70, 6); 
  popMatrix();
  
  pushMatrix();
  beginShape(); {
    noStroke();
    fill(7, 159, 65);
    scale(1.5);
    translate(0, 280);
    triangle(30, 105, 78, 20, 126, 105);
    endShape();
  }
  popMatrix();
  
  pushMatrix();
  beginShape(); {
    noStroke();
    fill(7, 159, 65);
    scale(1.5);
    translate(0, 320);
    triangle(30, 105, 78, 20, 126, 105);
    endShape();
  }
  popMatrix();
  
  pushMatrix();
  beginShape(); {
    noStroke();
    fill(7, 159, 65);
    scale(1.5);
    translate(120, 290);
    triangle(30, 105, 78, 20, 126, 105);
    endShape();
  }
  popMatrix();
  
  pushMatrix();
  beginShape(); {
    noStroke();
    fill(7, 159, 65);
    scale(1.5);
    translate(120, 330);
    triangle(30, 105, 78, 20, 126, 105);
    endShape();
  }
  popMatrix();
  
  beginShape();
  noStroke();
  fill(80, 53, 10);
  translate(55, 600, -5);
  rect(30, 20, 55, 95);
  endShape();
  
  beginShape();
  noStroke();
  fill(80, 53, 10);
  translate(55, 600, -5);
  rect(30, 20, 55, 95);
  endShape();
} 


void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
    }
    endShape(CLOSE);
}
