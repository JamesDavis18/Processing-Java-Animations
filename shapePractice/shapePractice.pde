// https://processing.org/tutorials/drawing/
// https://processing.org/reference/triangle_.html
// https://processing.org/reference/fill_.html
// https://processing.org/reference/stroke_.html
// https://processing.org/reference/strokeWeight_.html

size(1000,900);
background(255);

// line(x1,y1,x2,y2);
// TOP LINE
line(0,0,1000,0);
// BOTTOM LINE
line(0,899,1000,899);
// VERTICAL MIDDLE LINE
line(500,0,500,900);
// HORIZONTAL MIDDLE LINE
line(0,450,1000,450);

strokeWeight(5);
// point(x,y);
// TOP-LEFT (VERTICAL) POINTS
point(250,195);
point(250,205);
point(250,215);
point(250,225);
point(250,235);
point(250,245);
point(250,255);
// TOP-LEFT (HORIZONTAL) POINTS
point(220,225);
point(230,225);
point(240,225);
point(250,225);
point(260,225);
point(270,225);
point(280,225);

strokeWeight(2);
stroke(0,0,200);

// rect(x,y,width,height);
// TOP-RIGHT (TOP-LEFT) RECTANGLE
rect(550,20,150,100);
// OR rectMode(CENTER); /n rect(x,y,width,height);
// TOP-RIGHT (MIDDLE) RECTANGLE
rectMode(CENTER);
rect(750,225,100,150);
// OR rectMode(CORNERS); /n rect(x1,y1,x2,y2);
// TOP-RIGHT (BOTTOM-RIGHT) RECTANGLE
rectMode(CORNERS);
rect(750,350,950,400);

stroke(0,0,0);

// ellipseMode(CENTER); /n ellipse(x,y,width,height);
// BOTTOM-LEFT (MIDDLE) ELLIPSE
fill(200,0,200);
ellipseMode(CENTER);
ellipse(250,675,100,100);
// OR ellipseMode(CORNER); /n ellipse(x,y,width,height);
// BOTTOM-LEFT (TOP-LEFT) ELLIPSE
fill(0,200,200);
ellipseMode(CORNER);
ellipse(50,500,100,100);
// OR ellipseMode(CORNERS); /n ellipse(x1,y1,x2,y2);
fill(100,200,100);
ellipseMode(CORNERS);
ellipse(350,750,450,850);

// triangle(x1,y1,x2,x3,y3)
// BOTTOM-RIGHT (UP-SIDE) TRIANGLE
fill(255,200,0);
triangle(600,700,700,550,800,700);
// BOTTOM_RIGHT (UP-SIDE DOWN) TRIANGLE
triangle(600,700,700,850,800,700);
