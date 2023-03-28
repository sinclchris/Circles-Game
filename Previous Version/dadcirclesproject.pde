int dim,cols,rows;
int videoScale = 250;
float h;
void setup() {
    size(1000, 1000);
  dim = width/2;
  background(0);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  ellipseMode(RADIUS);
  frameRate(10);
  cols = 4;
  rows = 4;
  h = random(0, 360);
  Grid(cols,rows,videoScale);
}


void draw() {
  

    }

void Grid(int cols,int rows,int scale) {
    // Begin loop for columns
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {

      // Scaling up to draw a ellipse at (x,y)
      int x = i*videoScale;
      int y = j*videoScale;
      fill(h,100,100);
      h = random(0, 360);
      stroke(0);
      // For every column and row, a ellipse is drawn at an (x,y) location scaled and sized by videoScale.
      ellipse(x+videoScale/2, y+videoScale/2, videoScale/2, videoScale/2);
}
}
}


void mousePressed(){
  ellipse( mouseX, mouseY, 2, 2 );
  text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
  int x,y;
  x = round(mouseX);
  y = round(mouseY);
  int i=0;
  int j=0;
  if (mousePressed && (mouseButton == LEFT)) {
    if (x > 0 && x<displayWidth/4) { i = 0; 
  }
    if (x > width/4 && x<width/2) { i = 1; 
  }
      if (x > width/2 && x<width*0.75) { i = 2; 
  }
    if (x > width*0.75 && x<width) { i = 3; 
  }
    if (y > 0 && y<height/4) { j = 0; 
  }
      if (y > height/4 && y<height/2) { j = 1; 
  }
      if (y > height/2 && y<height*0.75) { j = 2; 
  }
      if (y > height*0.75 && y<height) { j = 3; 
  }
    x = i*videoScale;
    y = j*videoScale;
    fill(h,100,100);
    h = random(0, 360);
    ellipse(x+videoScale/2, y+videoScale/2, videoScale/2, videoScale/2);
  } 
  else if (mousePressed && (mouseButton == RIGHT)) {
  }
 
}
