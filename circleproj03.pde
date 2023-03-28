int dim,cols,rows;
 //box side /4 for 4x4 grid
float h;
int offset = 100;
void setup() {
    size(1000, 1000);
  int videoScale = (width-offset)/4; 
  dim = width/2;
  background(0);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  ellipseMode(RADIUS);
  frameRate(10);
  cols = 4;
  rows = 4;
  //h = random(0, 360);
  Grid(cols,rows,videoScale);
  Label(cols,rows,videoScale);
  println (videoScale);
}
int videoScale = (width-offset)/4;


void draw() {
  

    }

void Grid(int cols,int rows,int videoScale) {   // these variables are global
    // Begin loop for columns
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {

      // Scaling up to draw a ellipse at (x,y)
      int x = i*videoScale + offset;
      int y = j*videoScale + offset;
      fill(0,0,50);
      stroke(0);
      // For every column and row, a ellipse is drawn at an (x,y) location scaled and sized by videoScale.
      ellipse(x+(width-offset)/8, y+(height-offset)/8, (width-offset)/8, (height-offset)/8);
}
}
}

void Label(int cols,int rows,int videoScale) {
    for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {
      int xlabel = i*videoScale+ offset;
      int ylabel = j*videoScale+ offset; 
      fill(120,100,100);
      if (j == 0) {
      text( "x: " + xlabel + " y: " + ylabel,xlabel+(width-offset)/8,ylabel-(offset/2));
      }
      if (i == 0) {
      text( "x: " + xlabel + " y: " + ylabel,xlabel-(offset/2),ylabel+(height-offset)/8);
      }
}}}

void mousePressed(){
  int videoScale = (width-offset)/4; 
  // marks mouse click point for troubleshooting
  ellipse( mouseX, mouseY, 2, 2 );
  // marks mouse coourdinates click point for troubleshooting
  fill(240,100,100);
  text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
  
  int x,y;
  x = mouseX;
  y = mouseY;
  int i=5;
  int j=5;
  println (videoScale);
  println (i,j,x,y);
  println((width-offset/4)+offset,((2*(width-offset)/4)+offset));
  println(width,offset);
  if (mousePressed && (mouseButton == LEFT)) {
    if (x > 0+offset && x < ((width-offset)/4)+offset) { i = 0; 
  }
    if (x > ((width-offset)/4)+offset && x < (2*(width-offset)/4)+offset) { i = 1; 
  }
    if (x > (2*(width-offset)/4)+offset && x < ((width-offset)*0.75)+offset) { i = 2; 
  }
    if (x > ((width-offset)*0.75)+offset && x < width+offset) { i = 3; 
  }
    if (y > 0+offset && y < ((width-offset)/4)+offset) { j = 0; 
  }
    if (y > ((width-offset)/4)+offset && y < (2*(width-offset)/4)+offset) { j = 1; 
  }
    if (y > (2*(width-offset)/4)+offset && y < ((height-offset)*0.75)+offset) { j = 2; 
  }
    if (y > ((height-offset)*0.75)+offset && y < height+offset) { j = 3; 
  }
    x = i*videoScale+offset;
    y = j*videoScale+offset;
    fill(120,100,100);
    ellipse(x+(width-offset)/8, y+(height-offset)/8, (width-offset)/8, (height-offset)/8);
    fill(240,100,100);
    text( "i: " + i + " j: " + j, mouseX + 2, mouseY + 9 );
    text( "x Actual: " + x + " y Actual: " + y, mouseX + 2, mouseY + 18 );
  } 
  else if (mousePressed && (mouseButton == RIGHT)) {
    if (x > 0+offset && x<(width-offset)/4+offset) { i = 0; 
  }
    if (x > width/4+offset && x<width/2+offset) { i = 1; 
  }
      if (x > width/2+offset && x<width*0.75+offset) { i = 2; 
  }
    if (x > ((width-offset)*0.75)+offset && x<width+offset) { i = 3; 
  }
    if (y > 0+offset && y<height/4+offset) { j = 0; 
  }
      if (y > height/4+offset && y<height/2+offset) { j = 1; 
  }
      if (y > height/2+offset && y<height*0.75+offset) { j = 2; 
  }
      if (y > ((height-offset)*0.75)+offset && y<height+offset) { j = 3; 
  }
    x = i*videoScale+offset;
    y = j*videoScale+offset;
    fill(240,100,100);
    ellipse(x+(width-offset)/8, y+(height-offset)/8, (width-offset)/8, (height-offset)/8);
  } 
 

  else if (mousePressed && (mouseButton == CENTER)) {
    if (x > 0+offset && x<(width-offset)/4+offset) { i = 0; 
  }
    if (x > width/4+offset && x<width/2+offset) { i = 1; 
  }
      if (x > width/2+offset && x<width*0.75+offset) { i = 2; 
  }
    if (x > ((width-offset)*0.75)+offset && x<width+offset) { i = 3; 
  }
    if (y > 0+offset && y<height/4+offset) { j = 0; 
  }
      if (y > height/4+offset && y<height/2+offset) { j = 1; 
  }
      if (y > height/2+offset && y<height*0.75+offset) { j = 2; 
  }
      if (y > ((height-offset)*0.75)+offset && y<height+offset) { j = 3; 
  }
    x = i*videoScale+offset;
    y = j*videoScale+offset;
    fill(360,100,100);
    ellipse(x+(width-offset)/8, y+(height-offset)/8, (width-offset)/8, (height-offset)/8);
  } 
}
