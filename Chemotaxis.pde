//declare bacteria variables here  
 Bacteria one = new Bacteria();
 
 void setup()   
 {     
 	//initialize bacteria variables here 
 size(300,300);
 }   
 void draw()   
 {    
 	//move and show the bacteria 
   one.walk();
   one.show();
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
     fill(0);
     ellipse(myX,myY, 10,10);
   }
 	//lots of java!   
 }    
