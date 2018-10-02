 Bacteria [] colony;
 void setup()   
 {     
 	//initialize bacteria variables here 
   background(0);
   colony = new Bacteria[100];
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
   float myX;
   float myY;
   /*float easing;
   float targetX;
   float dx;
   float targetY;
   float dy; */
   int myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   Bacteria(){
     /*easing = 0.05;
     targetX = mouseX;
     dx = targetX - myX;
     myX += dx * easing;
     targetY = mouseY;
     dy = targetY - myY;
     myY += dy * easing; */
     myX = 150;
     myY = 150;
   }
   void walk(){ //make it walk TOWARDS mouseX and mouseY
     myX = myX + (int)(Math.random()*3) - 1;//myX += dx * easing;
     myY = myY + (int)(Math.random()*3) - 1;//myY += dy * easing;
   }
   void show(){
     fill(myColor, 20);
     noStroke();
     ellipse(myX,myY, 2,2);
   }
 	//lots of java!   
 }    
 
 void mousePressed(){
   background(0);
   redraw();
 }
