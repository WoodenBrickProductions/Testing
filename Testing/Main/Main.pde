import java.util.ArrayList;

public Player player = new Player(300,300,50,50,true,10);


public static int frames;
public static int time;
public int framerate = 30;

void setup() {
background(0);
size(1280,800);
frameRate(framerate);

Map.registerTerrain(); 
player.createSquares(Map.terrain,Map.borders);

noStroke();
 
}





void draw() {
background(0);
 
    for(Square sq : Map.terrain) {
    rect(sq.xpos,sq.ypos,sq.xsize,sq.ysize);
      
      
  }
 
 fill(0,255,0);
 for(Square sq: Map.borders) {
   rect(sq.xpos,sq.ypos,sq.xsize,sq.ysize);
   
 }
 
  fill(255,0,0);
rect(player.xpos,player.ypos,player.xsize,player.ysize);
  fill(255);
if(keyPressed) player.move();

frames++;
if(frames%framerate==0) time++;
// println(time);
 
}


void keyPressed(){
  if(key<='z') {
    player.setKeysPressed(key,true); 
}
}
void keyReleased() {
  if(key<='z')
   {
    player.setKeysPressed(key,false); 
   }
}
  