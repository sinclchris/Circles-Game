void keyPressed() {

  float tile = (height/6);
  float ctile =(height/10);
  println (key);


  for (int i =0; i <16; i ++) {


    float d = dist (cballX[i], cballY[i], mouseX, mouseY);
 
    if (d < (ctile/2)) {

      if (key == 'z') {

        fill(red);
        circle(cballX[i], cballY[i], ctile*.9);
        circle(ballX[i], ballY[i], tile*.9);
        sfx1.playFor(1);   //
        ballcolor[i] = red;
        
        bingo (i, ballcolor[i]);  //used for programmer info   
        nToxy(i);                 //converts the i to an x y, not sure if its helpful yet
        
        //if (ballcolor[i] == ballcolor[i+1]){     //poss causes trouble if ball 15 selected.
        //println ("color match ");  //test to see if i+1 works it does but pick 15 and we go out of bounds on the array        
        //}
        
      }

      if (key == 'x') {

        fill(green);
        circle(cballX[i], cballY[i], ctile*.9);
        circle(ballX[i], ballY[i], tile*.9);
        sfx1.playFor(1);
        ballcolor[i] = green;
        
        bingo (i, ballcolor[i]);
        nToxy(i);
      }
      if (key == 'c') {

        fill(blue);
        circle(cballX[i], cballY[i], ctile*.9);
        circle(ballX[i], ballY[i], tile*.9);
        sfx1.playFor(1);
        ballcolor[i] = blue;
        
        bingo (i, ballcolor[i]);
        nToxy(i);
      }
      if (key == 'v') {

        fill(grey);
        circle(cballX[i], cballY[i], ctile*.9);
        circle(ballX[i], ballY[i], tile*.9);
        ballcolor[i] = grey;
        
        //bingo (i, ballcolor[i]);
      }
    }
  }

for (int i = 0; i < 16; i ++){  //this is a test to display the changing ballcolor array
  
println(ballcolor[i]);



}





}
