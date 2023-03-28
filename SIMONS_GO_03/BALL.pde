class Ball {
  
     float bx;
     float by;
     float btile;
  
  Ball(float x,float y, float tile){
    
     float bx =x;
     float by =y;
     float btile =tile;
    println ("from constructor ", bx, by, tile);

  }
  
  
   void appear(){

     //float bx =x;
     //float by =y;
     //float btile =tile;
    
     fill(100,100,100);     
     circle (bx, by, btile*.9);

     println ("from appear      ",bx,by,btile);
   }
  
  

   
 
  
}

  
  
