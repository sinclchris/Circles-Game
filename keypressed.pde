
void keyPressed () {

    int x,y;
  x = round(mouseX)+offset;
  y = round(mouseY)+offset;
  int i=0;
  int j=0;
  
  
 
  println (key);
 
  if (key =='z')   {
 
  {
      if (x > 0+offset && x<displayWidth/4+offset) { i = 0; 
  }
    if (x > width/4+offset && x<width/2+offset) { i = 1; 
  }
      if (x > width/2+offset && x<width*0.75+offset) { i = 2; 
  }
    if (x > width*0.75+offset && x<width+offset) { i = 3; 
  }
    if (y > 0+offset && y<height/4+offset) { j = 0; 
  }
      if (y > height/4+offset && y<height/2+offset) { j = 1; 
  }
      if (y > height/2+offset && y<height*0.75+offset) { j = 2; 
  }
      if (y > height*0.75+offset && y<height+offset) { j = 3; 
  }
    x = i*videoScale+offset;
    y = j*videoScale+offset;
    fill(37,100,100);
    //h = random(0, 360);
    ellipse(x+videoScale/2, y+videoScale/2, videoScale/2, videoScale/2);
  } 
  

  
}


if (key =='x')   {
 
  {
      if (x > 0+offset && x<displayWidth/4+offset) { i = 0; 
  }
    if (x > width/4+offset && x<width/2+offset) { i = 1; 
  }
      if (x > width/2+offset && x<width*0.75+offset) { i = 2; 
  }
    if (x > width*0.75+offset && x<width+offset) { i = 3; 
  }
    if (y > 0+offset && y<height/4+offset) { j = 0; 
  }
      if (y > height/4+offset && y<height/2+offset) { j = 1; 
  }
      if (y > height/2+offset && y<height*0.75+offset) { j = 2; 
  }
      if (y > height*0.75+offset && y<height+offset) { j = 3; 
  }
    x = i*videoScale+offset;
    y = j*videoScale+offset;
    fill(120,100,100);
    //h = random(0, 360);
    ellipse(x+videoScale/2, y+videoScale/2, videoScale/2, videoScale/2);
  } 
  

  
}

if (key =='c')   {
 
  {
      if (x > 0+offset && x<displayWidth/4+offset) { i = 0; 
  }
    if (x > width/4+offset && x<width/2+offset) { i = 1; 
  }
      if (x > width/2+offset && x<width*0.75+offset) { i = 2; 
  }
    if (x > width*0.75+offset && x<width+offset) { i = 3; 
  }
    if (y > 0+offset && y<height/4+offset) { j = 0; 
  }
      if (y > height/4+offset && y<height/2+offset) { j = 1; 
  }
      if (y > height/2+offset && y<height*0.75+offset) { j = 2; 
  }
      if (y > height*0.75+offset && y<height+offset) { j = 3; 
  }
    x = i*videoScale+offset;
    y = j*videoScale+offset;
    fill(260,100,100);
    //h = random(0, 360);
    ellipse(x+videoScale/2, y+videoScale/2, videoScale/2, videoScale/2);
  } 
  

  
}

if (key =='v')   {
 
  {
      if (x > 0+offset && x<displayWidth/4+offset) { i = 0; 
  }
    if (x > width/4+offset && x<width/2+offset) { i = 1; 
  }
      if (x > width/2+offset && x<width*0.75+offset) { i = 2; 
  }
    if (x > width*0.75+offset && x<width+offset) { i = 3; 
  }
    if (y > 0+offset && y<height/4+offset) { j = 0; 
  }
      if (y > height/4+offset && y<height/2+offset) { j = 1; 
  }
      if (y > height/2+offset && y<height*0.75+offset) { j = 2; 
  }
      if (y > height*0.75+offset && y<height+offset) { j = 3; 
  }
    x = i*videoScale+offset;
    y = j*videoScale+offset;
    fill(0,0,50);
    //h = random(0, 360);
    ellipse(x+videoScale/2, y+videoScale/2, videoScale/2, videoScale/2);
  } 
  

  
}
}
