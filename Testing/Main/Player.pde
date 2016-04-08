
public class Player extends Square{
  
  
  boolean[] keysPressed = new boolean['z'];

  char direction;
  
 public Player() {
   super(0,0,0,0, false, 0);
}
  
 public Player(int xpos, int ypos, int xsize, int ysize, boolean solid) {
   super(xpos,ypos,xsize,ysize,solid,0);
   }
    
 public Player(int xpos, int ypos, int xsize, int ysize, boolean solid, int speed) {
   super(xpos,ypos,xsize,ysize,solid,speed);
 }
  
  
  
  
  
 public void move()
 {
   
   switch(key) { 
     
     case 'a':
     if((checkWillCollideAll_SOLID(Map.borders, 'a')==false))
     {
       direction = 'a';
       player.xpos -= player.speed;
       if(checkCollideAll(Map.passage,'a')) println("RIP");
     }else{
       Square sq = findSquare(Map.borders,'a');
       player.xpos -= player.xpos - sq.xpos - sq.xsize-1;   
       if(checkCollideAll(Map.passage,'a')) println("RIP");  
 }
      break;
      
      case 'd':
     if((checkWillCollideAll_SOLID(Map.borders, 'd')==false))
     {
       direction = 'd';
       player.xpos += player.speed;
       if(checkCollideAll(Map.passage,'d')) println("RIP");
     }else{
       Square sq = findSquare(Map.borders,'d');
       player.xpos += sq.xpos - player.xpos - player.xsize -1;   
       if(checkCollideAll(Map.passage,'d')) println("RIP");
     }
      break;
      
      case 'w':
     if((checkWillCollideAll_SOLID(Map.borders, 'w')==false))
     {
      direction = 'w';
      player.ypos -= player.speed;
      if(checkCollideAll(Map.passage,'w')) println("RIP");
     }else{
       Square sq = findSquare(Map.borders,'w');
       player.ypos -= player.ypos - sq.ypos - sq.ysize -1;   
       if(checkCollideAll(Map.passage,'w')) println("RIP");
     }
      break;
      
      case 's':
     if((checkWillCollideAll_SOLID(Map.borders,'s')==false))
     {
      direction = 's';
      player.ypos += player.speed;
     }else{
       Square sq = findSquare(Map.borders,'s');
       player.ypos += sq.ypos - player.ypos - player.ysize-1;   
       if(checkCollideAll(Map.passage,'s')) println("RIP");
     }
    break;
    
   }
  
  
 }  

  public void setKeysPressed(int i,boolean a) {
    this.keysPressed[i] = a;
    
    
  }
  
  
  
  
}