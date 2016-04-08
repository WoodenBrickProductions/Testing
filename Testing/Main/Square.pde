
public static class Square {


  
  
  public int xpos;
  public int ypos;
  public int xsize;
  public int ysize;
  public int speed;
  public boolean solid;
  
  //1 top left, 2 top middle, 3 top right, 4 middle right, 5 bottom right, 6 bottom middle, 7 bottom left, 8 middle left, 9 center
  
  public int point1x;
  public int point1y;
  public int point2x;
  public int point2y;
  public int point3x;
  public int point3y;
  public int point4x;
  public int point4y;
  public int point5x;
  public int point5y;
  public int point6x;
  public int point6y;
  public int point7x;
  public int point7y;
  public int point8x;
  public int point8y;
  public int point9x;
  public int point9y;

 
  
  public Square() {
    this.xpos = 0;
    this.ypos = 0;
    this.xsize = 0;
    this.ysize = 0;
    this.speed = 0;
    this.solid = false;

    this.point1x=xpos;
    this.point1y=ypos;
    this.point2x=xpos+xsize/2;
    this.point2y=ypos;
    this.point3x=xpos+xsize;
    this.point3y=ypos;
    this.point4x=xpos+xsize;
    this.point4y=ypos+ysize/2;
    this.point5x=xpos+xsize;
    this.point5y=ypos+ysize;
    this.point6x=xpos+xsize/2;
    this.point6y=ypos+ysize;
    this.point7x=xpos;
    this.point7y=ypos+ysize;
    this.point8x=xpos;
    this.point8y=ypos+ysize/2;
    this.point9x=xpos+xsize/2;
    this.point9y=ypos+ysize/2;


}
  
  public Square(int xpos, int ypos, int xsize, int ysize, boolean solid) {
    this.xpos = xpos;
    this.ypos = ypos;
    this.xsize = xsize;
    this.ysize = ysize;
    this.solid = solid;
    this.speed = 0;
 
    this.point1x=xpos;
    this.point1y=ypos;
    this.point2x=xpos+xsize/2;
    this.point2y=ypos;
    this.point3x=xpos+xsize;
    this.point3y=ypos;
    this.point4x=xpos+xsize;
    this.point4y=ypos+ysize/2;
    this.point5x=xpos+xsize;
    this.point5y=ypos+ysize;
    this.point6x=xpos+xsize/2;
    this.point6y=ypos+ysize;
    this.point7x=xpos;
    this.point7y=ypos+ysize;
    this.point8x=xpos;
    this.point8y=ypos+ysize/2;
    this.point9x=xpos+xsize/2;
    this.point9y=ypos+ysize/2;

}
    
  public Square(int xpos, int ypos, int xsize, int ysize, boolean solid, int speed) {
    this.xpos = xpos;
    this.ypos = ypos;
    this.xsize = xsize;
    this.ysize = ysize;
    this.solid = solid;
    this.speed = speed;

    this.point1x=xpos;
    this.point1y=ypos;
    this.point2x=xpos+xsize/2;
    this.point2y=ypos;
    this.point3x=xpos+xsize;
    this.point3y=ypos;
    this.point4x=xpos+xsize;
    this.point4y=ypos+ysize/2;
    this.point5x=xpos+xsize;
    this.point5y=ypos+ysize;
    this.point6x=xpos+xsize/2;
    this.point6y=ypos+ysize;
    this.point7x=xpos;
    this.point7y=ypos+ysize;
    this.point8x=xpos;
    this.point8y=ypos+ysize/2;
    this.point9x=xpos+xsize/2;
    this.point9y=ypos+ysize/2;

}  
    
  
  
  
  public boolean checkWillCollideAll(ArrayList<Square> array, char direction) {
   for(Square sq : array) {
    //Up Wall 
      if(direction == 'w'){
       if((xpos+xsize/2>=sq.point8x)&&(xpos+xsize/2<=sq.point4x)&&(ypos-speed>=sq.point2y)&&(ypos-speed<=sq.point6y)) return true;
      else if((xpos>=sq.point8x)&&(xpos<=sq.point4x)&&(ypos-speed>=sq.point2y)&&(ypos-speed<=sq.point6y)) return true;
      else if((xpos+xsize>=sq.point8x)&&(xpos+xsize<=sq.point4x)&&(ypos-speed>=sq.point2y)&&(ypos-speed<=sq.point6y)) return true;
      else if((xpos<=sq.point7x)&&(xpos+xsize>=sq.point5x)&&(ypos-speed>=sq.point2y)&&(ypos-speed<=sq.point6y)) return true;
      }
     
      //Right Wall
      if(direction=='d'){
       if((xpos+xsize+speed>=sq.point8x)&&(xpos+xsize+speed<=sq.point4x)&&(ypos+ysize/2>=sq.point3y)&&(ypos+ysize/2<=sq.point7y)) return true;
      else if((xpos+xsize+speed>=sq.point8x)&&(xpos+xsize+speed<=sq.point4x)&&(ypos>=sq.point2y)&&(ypos<=sq.point6y)) return true;
      else if((xpos+xsize+speed>=sq.point8x)&&(xpos+xsize+speed<=sq.point4x)&&(ypos+ysize>=sq.point2y)&&(ypos+ysize<=sq.point6y)) return true;
      else if((xpos+xsize+speed>=sq.point7x)&&(xpos+xsize+speed<=sq.point5x)&&(ypos<=sq.point1y)&&(ypos+ysize>=sq.point7y)) return true;
      }
      
      //Down Wall
      if(direction=='s'){
       if((xpos+xsize/2>=sq.point8x)&&(xpos+xsize/2<=sq.point4x)&&(ypos+ysize+speed>=sq.point2y)&&(ypos+ysize+speed<=sq.point6y)) return true;
      else if((xpos+xsize>=sq.point8x)&&(xpos+xsize<=sq.point4x)&&(ypos+ysize+speed>=sq.point2y)&&(ypos+ysize+speed<=sq.point6y)) return true;
      else if((xpos>=sq.point8x)&&(xpos<=sq.point4x)&&(ypos+ysize+speed>=sq.point2y)&&(ypos+ysize+speed<=sq.point6y)) return true;
      else if((xpos<=sq.point7x)&&(xpos+xsize>=sq.point5x)&&(ypos+ysize+speed>=sq.point2y)&&(ypos+ysize+speed<=sq.point6y)) return true;
      }
      
      //Left Wall
      if(direction=='a'){
       if((xpos-speed>=sq.point8x)&&(xpos-speed<=sq.point4x)&&(ypos+ysize/2>=sq.point2y)&&(ypos+ysize/2<=sq.point6y)) return true;
      else if((xpos-speed>=sq.point8x)&&(xpos-speed<=sq.point4x)&&(ypos>=sq.point2y)&&(ypos<=sq.point6y)) return true;
      else if((xpos-speed>=sq.point8x)&&(xpos-speed<=sq.point4x)&&(ypos+ysize>=sq.point2y)&&(ypos+ysize<=sq.point6y)) return true;
      else if((xpos-speed>=sq.point7x)&&(xpos-speed<=sq.point5x)&&(ypos<=sq.point1y)&&(ypos+ysize>=sq.point7y)) return true;
        }
      }
    
  
    
    return false;
    
  }
 
 public boolean checkWillCollideAll_SOLID(ArrayList<Square> array, char direction) {
   for(Square sq : array) {
    //Up Wall 
      
      if(sq.solid) {
      if(direction == 'w'){
       if((xpos+xsize/2>=sq.point8x)&&(xpos+xsize/2<=sq.point4x)&&(ypos - speed>=sq.point2y)&&(ypos-speed<=sq.point6y)) return true;
      else if((xpos>=sq.point8x)&&(xpos<=sq.point4x)&&(ypos-speed>=sq.point2y)&&(ypos-speed<=sq.point6y)) return true;
      else if((xpos+xsize>=sq.point8x)&&(xpos+xsize<=sq.point4x)&&(ypos-speed>=sq.point2y)&&(ypos-speed<=sq.point6y)) return true;
      else if((xpos<=sq.point7x)&&(xpos+xsize>=sq.point5x)&&(ypos-speed>=sq.point2y)&&(ypos-speed<=sq.point6y)) return true;
      }
     
      //Right Wall
      if(direction=='d'){
       if((xpos+xsize+speed>=sq.point8x)&&(xpos+xsize+speed<=sq.point4x)&&(ypos+ysize/2>=sq.point3y)&&(ypos+ysize/2<=sq.point7y)) return true;
      else if((xpos+xsize+speed>=sq.point8x)&&(xpos+xsize+speed<=sq.point4x)&&(ypos>=sq.point2y)&&(ypos<=sq.point6y)) return true;
      else if((xpos+xsize+speed>=sq.point8x)&&(xpos+xsize+speed<=sq.point4x)&&(ypos+ysize>=sq.point2y)&&(ypos+ysize<=sq.point6y)) return true;
      else if((xpos+xsize+speed>=sq.point7x)&&(xpos+xsize+speed<=sq.point5x)&&(ypos<=sq.point1y)&&(ypos+ysize>=sq.point7y)) return true;
      }
      
      //Down Wall
      if(direction=='s'){
       if((xpos+xsize/2>=sq.point8x)&&(xpos+xsize/2<=sq.point4x)&&(ypos+ysize+speed>=sq.point2y)&&(ypos+ysize+speed<=sq.point6y)) return true;
      else if((xpos+xsize>=sq.point8x)&&(xpos+xsize<=sq.point4x)&&(ypos+ysize+speed>=sq.point2y)&&(ypos+ysize+speed<=sq.point6y)) return true;
      else if((xpos>=sq.point8x)&&(xpos<=sq.point4x)&&(ypos+ysize+speed>=sq.point2y)&&(ypos+ysize+speed<=sq.point6y)) return true;
      else if((xpos<=sq.point7x)&&(xpos+xsize>=sq.point5x)&&(ypos+ysize+speed>=sq.point2y)&&(ypos+ysize+speed<=sq.point6y)) return true;
      }
      
      //Left Wall
      if(direction=='a'){
       if((xpos-speed>=sq.point8x)&&(xpos-speed<=sq.point4x)&&(ypos+ysize/2>=sq.point2y)&&(ypos+ysize/2<=sq.point6y)) return true;
      else if((xpos-speed>=sq.point8x)&&(xpos-speed<=sq.point4x)&&(ypos>=sq.point2y)&&(ypos<=sq.point6y)) return true;
      else if((xpos-speed>=sq.point8x)&&(xpos-speed<=sq.point4x)&&(ypos+ysize>=sq.point2y)&&(ypos+ysize<=sq.point6y)) return true;
      else if((xpos-speed>=sq.point7x)&&(xpos-speed<=sq.point5x)&&(ypos<=sq.point1y)&&(ypos+ysize>=sq.point7y)) return true;
        }
      }
    
   }
    
    return false;
    
  }
 
 
  public boolean checkWillCollide(Square sq, char direction) {
    
    //Up Wall 
    if(direction == 'w'){
     if((xpos+xsize/2>=sq.point8x)&&(xpos+xsize/2<=sq.point4x)&&(ypos-speed>=sq.point2y)&&(ypos-speed<=sq.point6y)) return true;
    else if((xpos>=sq.point8x)&&(xpos<=sq.point4x)&&(ypos-speed>=sq.point2y)&&(ypos-speed<=sq.point6y)) return true;
    else if((xpos+xsize>=sq.point8x)&&(xpos+xsize<=sq.point4x)&&(ypos-speed>=sq.point2y)&&(ypos-speed<=sq.point6y)) return true;
    else if((xpos<=sq.point7x)&&(xpos+xsize>=sq.point5x)&&(ypos-speed>=sq.point2y)&&(ypos-speed<=sq.point6y)) return true;
    }
   
    //Right Wall
    if(direction=='d'){
     if((xpos+xsize+speed>=sq.point8x)&&(xpos+xsize+speed<=sq.point4x)&&(ypos+ysize/2>=sq.point3y)&&(ypos+ysize/2<=sq.point7y)) return true;
    else if((xpos+xsize+speed>=sq.point8x)&&(xpos+xsize+speed<=sq.point4x)&&(ypos>=sq.point2y)&&(ypos<=sq.point6y)) return true;
    else if((xpos+xsize+speed>=sq.point8x)&&(xpos+xsize+speed<=sq.point4x)&&(ypos+ysize>=sq.point2y)&&(ypos+ysize<=sq.point6y)) return true;
    else if((xpos+xsize+speed>=sq.point7x)&&(xpos+xsize+speed<=sq.point5x)&&(ypos<=sq.point1y)&&(ypos+ysize>=sq.point7y)) return true;
    }
    
    //Down Wall
    if(direction=='s'){
     if((xpos+xsize/2>=sq.point8x)&&(xpos+xsize/2<=sq.point4x)&&(ypos+ysize+speed>=sq.point2y)&&(ypos+ysize+speed<=sq.point6y)) return true;
    else if((xpos+xsize>=sq.point8x)&&(xpos+xsize<=sq.point4x)&&(ypos+ysize+speed>=sq.point2y)&&(ypos+ysize+speed<=sq.point6y)) return true;
    else if((xpos>=sq.point8x)&&(xpos<=sq.point4x)&&(ypos+ysize+speed>=sq.point2y)&&(ypos+ysize+speed<=sq.point6y)) return true;
    else if((xpos<=sq.point7x)&&(xpos+xsize>=sq.point5x)&&(ypos+ysize+speed>=sq.point2y)&&(ypos+ysize+speed<=sq.point6y)) return true;
    }
    
    //Left Wall
    if(direction=='a'){
     if((xpos-speed>=sq.point8x)&&(xpos-speed<=sq.point4x)&&(ypos+ysize/2>=sq.point2y)&&(ypos+ysize/2<=sq.point6y)) return true;
    else if((xpos-speed>=sq.point8x)&&(xpos-speed<=sq.point4x)&&(ypos>=sq.point2y)&&(ypos<=sq.point6y)) return true;
    else if((xpos-speed>=sq.point8x)&&(xpos-speed<=sq.point4x)&&(ypos+ysize>=sq.point2y)&&(ypos+ysize<=sq.point6y)) return true;
    else if((xpos-speed>=sq.point7x)&&(xpos-speed<=sq.point5x)&&(ypos<=sq.point1y)&&(ypos+ysize>=sq.point7y)) return true;
    }
    
    
  
    
    return false;
    
    
  }
 
   public Square findSquare(ArrayList<Square> array, char direction) {
    for(Square sq : array) {
      if(checkWillCollide(sq, direction)) return sq; 
     
      
        }
       return new Square();
    
     
   }
 
 
 
 
  public boolean checkCollideAll(ArrayList<Square> array, char direction) {
  for(Square sq : array) {
   
   //Up Wall 
   if(direction == 'w'){
    if((xpos+xsize/2>=sq.point8x)&&(xpos+xsize/2<=sq.point4x)&&(ypos-1>=sq.point2y)&&(ypos-1<=sq.point6y)) return true;
   else if((xpos>=sq.point8x)&&(xpos<=sq.point4x)&&(ypos-1>=sq.point2y)&&(ypos-1<=sq.point6y)) return true;
   else if((xpos+xsize>=sq.point8x)&&(xpos+xsize<=sq.point4x)&&(ypos-1>=sq.point2y)&&(ypos-1<=sq.point6y)) return true;
   else if((xpos<=sq.point7x)&&(xpos+xsize>=sq.point5x)&&(ypos-1>=sq.point2y)&&(ypos-1<=sq.point6y)) return true;
   }
   
   //Right Wall
   if(direction=='d'){
    if((xpos+xsize+1>=sq.point8x)&&(xpos+xsize+1<=sq.point4x)&&(ypos+ysize/2>=sq.point3y)&&(ypos+ysize/2<=sq.point7y)) return true;
   else if((xpos+xsize+1>=sq.point8x)&&(xpos+xsize+1<=sq.point4x)&&(ypos>=sq.point2y)&&(ypos<=sq.point6y)) return true;
   else if((xpos+xsize+1>=sq.point8x)&&(xpos+xsize+1<=sq.point4x)&&(ypos+ysize>=sq.point2y)&&(ypos+ysize<=sq.point6y)) return true;
   else if((xpos+xsize+1>=sq.point7x)&&(xpos+xsize+1<=sq.point5x)&&(ypos<=sq.point1y)&&(ypos+ysize>=sq.point7y)) return true;
   }
    
   //Down Wall
   if(direction=='s'){
    if((xpos+xsize/2>=sq.point8x)&&(xpos+xsize/2<=sq.point4x)&&(ypos+ysize-1>=sq.point2y)&&(ypos+ysize-1<=sq.point6y)) return true;
   else if((xpos+xsize>=sq.point8x)&&(xpos+xsize<=sq.point4x)&&(ypos+ysize-1>=sq.point2y)&&(ypos+ysize-1<=sq.point6y)) return true;
   else if((xpos>=sq.point8x)&&(xpos<=sq.point4x)&&(ypos+ysize-1>=sq.point2y)&&(ypos+ysize-1<=sq.point6y)) return true;
   else if((xpos<=sq.point7x)&&(xpos+xsize>=sq.point5x)&&(ypos+ysize-1>=sq.point2y)&&(ypos+ysize-1<=sq.point6y)) return true;
   }
    
   //Left Wall
   if(direction=='a'){
    if((xpos-1>=sq.point8x)&&(xpos-1<=sq.point4x)&&(ypos+ysize/2>=sq.point2y)&&(ypos+ysize/2<=sq.point6y)) return true;
   else if((xpos-1>=sq.point8x)&&(xpos-1<=sq.point4x)&&(ypos>=sq.point2y)&&(ypos<=sq.point6y)) return true;
   else if((xpos-1>=sq.point8x)&&(xpos-1<=sq.point4x)&&(ypos+ysize>=sq.point2y)&&(ypos+ysize<=sq.point6y)) return true;
   else if((xpos-1>=sq.point7x)&&(xpos-1<=sq.point5x)&&(ypos<=sq.point1y)&&(ypos+ysize>=sq.point7y)) return true;
   }
    
    
  }
    
   return false;
    
  
}
  
  public boolean checkCollide(Square sq, char direction) {
   
    //Up Wall 
    if(direction == 'w'){
     if((xpos+xsize/2>=sq.point8x)&&(xpos+xsize/2<=sq.point4x)&&(ypos>=sq.point2y)&&(ypos<=sq.point6y)) return true;
    else if((xpos>=sq.point8x)&&(xpos<=sq.point4x)&&(ypos>=sq.point2y)&&(ypos<=sq.point6y)) return true;
    else if((xpos+xsize>=sq.point8x)&&(xpos+xsize<=sq.point4x)&&(ypos>=sq.point2y)&&(ypos<=sq.point6y)) return true;
    else if((xpos<=sq.point7x)&&(xpos+xsize>=sq.point5x)&&(ypos>=sq.point2y)&&(ypos<=sq.point6y)) return true;
    }
   
    //Right Wall
    if(direction=='d'){
     if((xpos+xsize>=sq.point8x)&&(xpos+xsize<=sq.point4x)&&(ypos+ysize/2>=sq.point3y)&&(ypos+ysize/2<=sq.point7y)) return true;
    else if((xpos+xsize>=sq.point8x)&&(xpos+xsize<=sq.point4x)&&(ypos>=sq.point2y)&&(ypos<=sq.point6y)) return true;
    else if((xpos+xsize>=sq.point8x)&&(xpos+xsize<=sq.point4x)&&(ypos+ysize>=sq.point2y)&&(ypos+ysize<=sq.point6y)) return true;
    else if((xpos+xsize>=sq.point7x)&&(xpos+xsize<=sq.point5x)&&(ypos<=sq.point1y)&&(ypos+ysize>=sq.point7y)) return true;
    }
    
    //Down Wall
    if(direction=='s'){
     if((xpos+xsize/2>=sq.point8x)&&(xpos+xsize/2<=sq.point4x)&&(ypos+ysize>=sq.point2y)&&(ypos+ysize<=sq.point6y)) return true;
    else if((xpos+xsize>=sq.point8x)&&(xpos+xsize<=sq.point4x)&&(ypos+ysize>=sq.point2y)&&(ypos+ysize<=sq.point6y)) return true;
    else if((xpos>=sq.point8x)&&(xpos<=sq.point4x)&&(ypos+ysize>=sq.point2y)&&(ypos+ysize<=sq.point6y)) return true;
    else if((xpos<=sq.point7x)&&(xpos+xsize>=sq.point5x)&&(ypos+ysize>=sq.point2y)&&(ypos+ysize<=sq.point6y)) return true;
    }
    
    //Left Wall
    if(direction=='a'){
     if((xpos>=sq.point8x)&&(xpos<=sq.point4x)&&(ypos+ysize/2>=sq.point2y)&&(ypos+ysize/2<=sq.point6y)) return true;
    else if((xpos>=sq.point8x)&&(xpos<=sq.point4x)&&(ypos>=sq.point2y)&&(ypos<=sq.point6y)) return true;
    else if((xpos>=sq.point8x)&&(xpos<=sq.point4x)&&(ypos+ysize>=sq.point2y)&&(ypos+ysize<=sq.point6y)) return true;
    else if((xpos>=sq.point7x)&&(xpos<=sq.point5x)&&(ypos<=sq.point1y)&&(ypos+ysize>=sq.point7y)) return true;
    }
  
  return false;

}
  
 
    public void createSquares( ArrayList<Square> array1 , ArrayList<Square> array2) {
      for(Square sq : array1) {
        array2.add(new Square(sq.xpos-10,sq.ypos-10,sq.xsize+20,10,true)); 
        array2.add(new Square(sq.xpos-10,sq.ypos-10,10,sq.ysize+20,true)); 
        array2.add(new Square(sq.xpos-10,sq.ypos+sq.ysize,sq.xsize+20,10,true)); 
        array2.add(new Square(sq.xpos+sq.xsize,sq.ypos-10,10,sq.ysize+20,true)); 
        
        
      }
      
      
      
    }
  
  
  public boolean isSolid(){
    
    return solid;
    
    
  }
 
  
  
}