void numbers(float x,float y, float tile ){
  
  println("numbers " ,x,y);
  
    fill(255);
    textSize (tile*.5);
    text ("1",x-tile/10,y-tile/2);
    text ("2", x-tile/10+tile,y-tile/2); 
    text ("3", x-tile/10+2*tile,y-tile/2);
    text ("4", x-tile/10+3*tile,y-tile/2);
    
    
}

void letters(float x,float y, float tile){
    fill(255);
    text ("A",x-0.8*tile,y+tile*0.1);
    text ("B",x-0.8*tile,y+tile*1.1);
    text ("C",x-0.8*tile,y+tile*2.1);
    text ("D",x-0.8*tile,y+tile*3.1);
    
}
