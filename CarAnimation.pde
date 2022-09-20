/*
Name : william vasilev
Student Number: 20093711
Programme Name: applied computing (wd001)

Brief description of the animation achieved:in this animation there is a car that moves across the screen and as it moves the background should change from night to morning.

Known bugs/problems: no problems/bugs

Any sources referred to during the development of the assignment (no need to reference lecture/lab materials): none

*/ 

void setup()
{
  size(500,400);
}
  float xCoord = 20;
  float background = 50;
  boolean reverseDirection = false;
  
  void draw()
  {
  if (xCoord == width){
    reverseDirection = false;
  }
    
  if(!reverseDirection){
    background = background +0.25;
    xCoord = xCoord +1;
  }
  else{
    background = background -0.25;
    xCoord = xCoord -1;
  }
     noStroke();
     background(background);
   
     fill(250,0,50);
     rect(xCoord,300,120,50);           //body of the car
     fill(100);
     rect(0,380,width,20);              //road
     fill(0);
     ellipse(xCoord,355,50,50);         //left wheel
     ellipse(xCoord+120,355,50,50);     //right wheel
     
     int xCoordinate = 100;
     
     int i =0;
     while (i<3)
     {
        fill(255);
        ellipse(xCoordinate,150,60,60);    //clouds
        ellipse(xCoordinate+20,120,60,60);
        ellipse(xCoordinate+200,80,60,60);
        ellipse(xCoordinate+220,50,60,60);
        xCoordinate += 40;
        i++;
     }
  }
  
