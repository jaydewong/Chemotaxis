 Bacteria [] colony;
 boolean eat = true;
 Food burger = new Food();
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
 void draw()   // ADD FUNCTION THAT TELLS ME IF BACTERIA IS STEPPING ON THE FOOD COLOR
 {    
 	//move and show the bacteria
   background(0);
   burger.show();
  for(int i = 0; i < colony.length; i++){
   colony[i].walk();
   colony[i].show();
  }
  burger.change();
  
  
 }  
 class Bacteria    
 { 
   int myX;
   int myY;
   int myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   Bacteria(){
     myX = 150;
     myY = 150;
   }
   void walk(){ //make it walk TOWARDS mouseX and mouseY
   if(myX < mouseX){
     myX = myX + (int)(Math.random()*5) - 1;
   } 
   if(myX > mouseX) {
     myX = myX + (int)(Math.random()*2) - 4;
   } 
   if(myY < mouseY){
     myY = myY + (int)(Math.random()*5) - 1;
   }
   if(myY > mouseY){
     myY = myY + (int)(Math.random()*2) - 4;
   }
   if(get(myX,myY) == color(211,176,87)){
     eat = false;
   }
   if(get(myX,myY) == color(82,64,13)){
     eat = false;
   }
   if(get(myX,myY) == color(107,234,69)){
     eat = false;
   }
   if(get(myX,myY) == color(247,80,91)){
     eat = false;
   }
   if(get(myX,myY) == color(0)){
     eat = true;
   }
   }
  void show(){
     fill(myColor);
     noStroke();
     ellipse(myX,myY, 20,20);
   }
 	//lots of java!   
 }    
 
 class Food { //lead bacteria to eat food
   float myX;
   float myY;
   
   Food(){
     myX = (int)(Math.random()*300);
     myY = (int)(Math.random()*300);
   }
   void change(){
     if(eat == false){ 
     myX = (int)(Math.random()*300);
     myY = (int)(Math.random()*300);
     }
   }
   void show(){
     fill(211,176,87);
     ellipse(myX, myY, 40,35);
     fill(82,64,13);
     rect(myX - 20, myY - 3, 40, 7, 7);
     fill(107,234,69);
     rect(myX - 20, myY - 5, 40, 3, 9);
     fill(247,80,91);
     rect(myX -20, myY + 4, 40, 3, 9);
   }
   
}
 
 void mousePressed(){
   background(0);
   redraw();
 }
