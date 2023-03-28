
Ball[] myBall; 

  //set the global variables
  color grey = color  (150, 150, 150);
color blue = color  (100, 100, 250);
color green = color (100, 250, 100);
color red = color   (250, 100, 100);



//keypress to recolour the balls and ping
//mousepress to add the win lines
//remote control off screen




void setup() {
  
//setup variables
  float x,y;

PImage bgnd;

  
  //set the image behind
  
  size (2920/2,1080/2);
  bgnd = loadImage ("bgnd.jpg");
  image (bgnd, 0,0,width, height);

  
  //square setup
  int tile =(height/6);
  x = (width-(6*tile));
  y = (1.5*tile);
  float sq = tile * 5.1;
  fill (0);
  square(x-(tile*1.1), y-(tile*1.1), sq);
  
  //call the numbers 
  numbers(x,y,tile);
  
  //call the letters
  letters(x,y,tile);
  
  //call the setup of the circles initial colours
  int ballcount =0;
  float ox=x;
  noStroke();
  myBall = new Ball[16];
  
  for (int j=0; j<4; j++) {
    
    println ("row ",j);

    for (int i=0; i<4; i++) {
      
      myBall[ballcount] = new Ball(x,y,tile);
      myBall[ballcount].appear(); 
      ballcount = ballcount ++;
 
      
println ("colm",i);
      
      x=x+tile;
   
    }

   
    y = y + tile;
    x = ox;
  }
  
  
  
}
  
  void draw(){
    
  }
