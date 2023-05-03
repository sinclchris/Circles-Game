
import processing.sound.*;
SoundFile sfx1;


color grey = color  (128, 130, 127);
color blue = color  (42, 97, 159);
color green = color (53, 171, 52);
color red = color   (153, 28, 27);

float[] ballX = new float[16];  //display ball
float[] ballY = new float[16];

int ballcount =0;

float[] cballX = new float[16];  //control ball 
float[] cballY = new float[16];

color[][] ballcolor = new color[4,4];

void setup() {
ballcolor = { {grey,blue,green,grey}, {blue,green,blue,blue}, {red,green,red,red}, {grey,red,green,grey} };

println (ballcolor[0][3], "------------------------------------------------------------------------------");
/*
ballcolor[0] = grey;          
ballcolor[1] = blue;
ballcolor[2] = green;
ballcolor[3] = grey;
ballcolor[4] = blue;
ballcolor[5] = green;
ballcolor[6] = blue;
ballcolor[7] = blue;
ballcolor[8] = red;
ballcolor[9] = green;
ballcolor[10] = red;
ballcolor[11] = red;
ballcolor[12] = grey;
ballcolor[13] = red;
ballcolor[14] = green;
ballcolor[15] = grey;
*/
  sfx1 = new SoundFile(this, "sfx1.wav");


  //set the image behind
  PImage bgnd;
  size (2920/2, 1000/2, P3D);  ///2 to scale for single screen and show scale works
  bgnd = loadImage ("bgnd.jpg");
  image (bgnd, 0, 0, width, height);


  //bigBalls positions
  float tile =(height/6);
  float x = (width-(6*tile));
  float y = (1.3*tile);
  float z =0;  //for attempted 3d sphere

  //smallBalls positions
  float ctile = (height/10);
  float cx = (width/12);
  float cy = (height*.3);
  int cballcount = 0;


  //square setup
  backing(tile, x, y);
  backing(ctile, cx, cy);

  //call the numbers
  numbers(x, y, tile);
  numbers(cx, cy, ctile);

  //call the letters
  letters(x, y, tile);
  letters(cx, cy, ctile);

  smallBalls(ctile, cx, cy, cballcount);  //calls the function to make the smallBalls

  bigBalls(x, y, tile);  //calls the function to make the bigBalls
}



void draw() {
}
