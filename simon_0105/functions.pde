///////////////////////////////////////////////////////////
void backing(float ctile, float cx, float cy){
  
  float sq = ctile * 5.1;
  fill (0);
  square(cx-(ctile*1.1), cy-(ctile*1.1), sq);
  
}

////////////////////////////////////////////////////////////

void numbers(float x,float y, float tile ){
  
  println("numbers " ,x,y);
  
    fill(255);
    textSize (tile*.5);
    text ("1",x-tile/10,y-tile/2);
    text ("2", x-tile/10+tile,y-tile/2); 
    text ("3", x-tile/10+2*tile,y-tile/2);
    text ("4", x-tile/10+3*tile,y-tile/2);
       
}


////////////////////////////////////////////////////////////////
void letters(float x,float y, float tile){
    fill(255);
    textSize (tile*.5);
    text ("A",x-0.8*tile,y+tile*0.1);
    text ("B",x-0.8*tile,y+tile*1.1);
    text ("C",x-0.8*tile,y+tile*2.1);
    text ("D",x-0.8*tile,y+tile*3.1);
    
}



void smallBalls(float ctile, float cx, float cy, int cballcount){
   
  float ox=cx;

println("start smallBalls");

  for (int j=0; j<4; j++) {
    
    println ("row ",j);

    for (int i=0; i<4; i++) {
      
      cballX[cballcount] = cx;
      println(cx,ballX[cballcount]);   
      cballY[cballcount] = cy; 
      println(cy,cballY[cballcount]);
       
println ("colm",i);

      cballcount = (cballcount +1);
      cx=cx+ctile;
         
    }
          
    cy = cy + ctile;
    cx = ox;
    
  }
   
// prints to console the x y coords and draws the circles
      println("results ");    
      for (int i =0; i<16; i ++){
        println("x coord ", (cballX[i]), "y coord ", (cballY[i]));     
        noStroke();
        fill (ballcolor[i]);
        circle (cballX[i],cballY[i],(ctile*.9));
      }
      
}

//////////////////////////////////////////////////////

void bigBalls(float x, float y, float tile){
  
  //this sets the arrays to contain the x and y for the positions
  float ox=x;

println("start ");

  for (int j=0; j<4; j++) {
    
    println ("row ",j);

    for (int i=0; i<4; i++) {
      
      ballX[ballcount] = x;
      println(x,ballX[ballcount]);   
      ballY[ballcount] = y; 
      println(y,ballY[ballcount]);
       
println ("colm",i);

      ballcount = (ballcount +1);
      x=x+tile;
         
    }
          
    y = y + tile;
    x = ox;
    
  }
   
// prints to console the x y coords and draws the circles
      println("results ");    
      for (int i =0; i<16; i ++){
        println("x coord ", (ballX[i]), "y coord ", (ballY[i]));     
        noStroke();
        fill (ballcolor[i]);
        circle (ballX[i],ballY[i],(tile*.9));
      }
      
      
}

/////////////////////////////////////////////////////////////////
void bingo(float n, color col){
  
  println(n,col);
  
  
  
  
}


///////////////////////////////////////////////////////////////

void nToxy(int n){
int y =1;
int x = n+1;

if (x-4 <1){
  
 
}

else if (x -8 < 1){ 
  
  x = x-4;
  y = 2;
}

else if (x -12 < 1){
  x = x - 8;
  y = 3;
}

else if (x - 16 < 1){  //not necessary but makes it tidy as if y is not 1 2 or 3 it must be 4
  x = x -12;
  y = 4;  
  

 println ("coords",x,y); 
 

  
}



   

}






///////////////////////////////////////////////////  
  
    
    
      
      
    
    
    
  
