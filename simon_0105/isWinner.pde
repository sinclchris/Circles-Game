





//Input color of keypress to find matches
//and i , j of the new circle to determine which columns/rows to check


    //check for 4 across
    for(int row = i; row < grid.length; row++){
      for (int col = 0;col < grid[0].length - 3;col++){
        if (grid[row][col] == keyPressColor   && 
          grid[row][col+1] == keyPressColor &&
          grid[row][col+2] == keyPressColor &&
          grid[row][col+3] == keyPressColor){
          return true, 4, [(row,col),(row,col+1),(row,col+2),(row,col+3)];
        }
        //check for 3 across, couldnt think of a smart way to do this right now but theres only 2 combinations so doesnt matter too much
        else if (grid[row][col] == keyPressColor   && 
          grid[row][col+1] == keyPressColor &&
          grid[row][col+2] == keyPressColor){
          return true, 3, [(row,col),(row,col+1),(row,col+2)];
          }
        else if(grid[row][col+1] == keyPressColor   && 
          grid[row][col+2] == keyPressColor &&
          grid[row][col+3] == keyPressColor){
          return true, 3, [(row,col+1),(row,col+2),(row,col+3)];
        }
      }      
    }
    
   
    //check for 4 up and down
    for(int row = 0; row < grid.length - 3; row++){
      for(int col = j; col < grid[0].length; col++){
        if (grid[row][col] == keyPressColor   && 
          grid[row+1][col] == keyPressColor &&
          grid[row+2][col] == keyPressColor &&
          grid[row+3][col] == keyPressColor){
          return true, 4, [(row,col),(row+1,col),(row+2,col),(row+3,col)];
        }
        //check for 3 up and down
        else if (grid[row][col] == keyPressColor   && 
          grid[row+1][col] == keyPressColor &&
          grid[row+2][col] == keyPressColor){
          return true, 3, [(row,col),(row+1,col),(row+2,col)];
          }
        else if(grid[row+1][col] == keyPressColor   && 
          grid[row+2][col] == keyPressColor &&
          grid[row+3][col] == keyPressColor){
          return true, 3, [(row+1,col),(row+2,col),(row+3,col)];
        }
      }
    }
    
        //check upward diagonal
    for(int row = 3; row < grid.length; row++){
      for(int col = 0; col < grid[0].length - 3; col++){
        if (grid[row][col] == keyPressColor   && 
          grid[row-1][col+1] == keyPressColor &&
          grid[row-2][col+2] == keyPressColor &&
          grid[row-3][col+3] == keyPressColor){
          return true, 4, [(row,col),(row-1,col+1),(row-2,col+2),(row-3,col+3)];
        }
        else if (grid[row][col] == keyPressColor   && 
          grid[row-1][col+1] == keyPressColor &&
          grid[row-2][col+2] == keyPressColor{
          return true, 3, [(row,col),(row-1,col+1),(row-2,col+2)];
        }
        else if (grid[row-1][col+1] == keyPressColor   && 
          grid[row-2][col+2] == keyPressColor &&
          grid[row-3][col+3] == keyPressColor){
          return true, 3, [(row-1,col+1),(row-2,col+2),(row-3,col+3)];
        }
      }
    }
    
        //check downward diagonal
    for(int row = 3; row < grid.length; row++){
      for(int col = 0; col < grid[0].length - 3; col++){
        if (grid[row][col] == keyPressColor   && 
          grid[row+1][col+1] == keyPressColor &&
          grid[row+2][col+2] == keyPressColor &&
          grid[row+3][col+3] == keyPressColor){
          return true, 4, [(row,col),(row+1,col+1),(row+2,col+2),(row+3,col+3)];
        }
        else if (grid[row][col] == keyPressColor   && 
          grid[row+1][col+1] == keyPressColor &&
          grid[row+2][col+2] == keyPressColor{
          return true, 3, [(row,col),(row+1,col+1),(row+2,col+2)];
        }
        else if (grid[row-1][col+1] == keyPressColor   && 
          grid[row+2][col+2] == keyPressColor &&
          grid[row+3][col+3] == keyPressColor){
          return true, 3, [(row+1,col+1),(row+2,col+2),(row+3,col+3)];
        }
      }
    }
