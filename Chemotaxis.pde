//goals: each bacteria is a different color. they will be attracted to my mouse moving an element around. 
 
 
 int oColor = (int)(Math.random()*256);
 int tColor = (int)(Math.random()*256);
 int thColor = (int)(Math.random()*256); 
 Bacteria [] colony;
 void setup()   
 {     
 	//initialize bacteria variables here 
   colony = new Bacteria[8];
   for(int i = 0; i < colony.length; i++){
     colony[i] = new Bacteria();
   }
 
 size(300,300);
 }   
 void draw()   
 {    
 	//move and show the bacteria
  for(int i = 0; i < colony.length; i++){
   colony[i].walk();
   colony[i].show();
  }
 }  
 class Bacteria    
 { 
   int myX;
   int myY;
   Bacteria(){
     myX = 150;
     myY = 150;
   }
   void walk(){
     myX = myX + (int)(Math.random()*3) - 1;
     myY = myY + (int)(Math.random()*3) - 1;
   }
   void show(){
     fill(oColor,tColor,thColor);
     noStroke();
     ellipse(myX,myY, 4,4);
   }
 	//lots of java!   
 }    
