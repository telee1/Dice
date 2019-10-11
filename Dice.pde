Die one;
Die two;
Die three;
Die four;
Die five;
Die six;
Die seven;
Die eight;
Die nine;



void setup()
{
  size(500, 300);
  textAlign(CENTER);
  noLoop();
}


void draw()
{  
  
  
    int total=0;
      
     background(200);
  for(int y= 20; y<=140; y=y+60)
  {
  	for(int x= 20; x<=140; x=x+60)
  	{
  		Die bob = new Die(x,y);
  		bob.show();

  		
        total = total + bob.number;
        
      
  	}

  }

  	  fill(0);
      textSize(24);
      text("Total = " + total, 90, 230);
  
   // one= new Die(20,20);
   // two= new Die(80,20);
   // three= new Die(140,20);
   // four= new Die(20,80);
   // five= new Die(20,140);
   // six= new Die(80,80);
   // seven= new Die(80,140);
   // eight= new Die(140,80);
   // nine= new Die(140,140);
   
   // one.show();
   // two.show();
   // three.show();
   // four.show();
   // five.show();  
   // six.show();
   // seven.show();
   // eight.show();
   // nine.show();
  
}


void mousePressed()
{
  redraw(); 
}


class Die //models one single dice cube
{
  int number, myX, myY;
  
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
    number = (int)((Math.random()*6)+1);
     
     
   
    
  }
  void roll()
  {
    number = 1;
  }
  void show()
  {
    noStroke();
    fill(255);
    rect(myX, myY, 50, 50);
    fill((int)((Math.random()*200)+1), (int)((Math.random()*200)+1), (int)((Math.random()*200)+1));

    if (number==1)
      {
        ellipse(myX + 25, myY + 25, 10, 10);
      }


    else if (number==2)
      {
       ellipse(myX + 15, myY + 25, 10, 10);
       ellipse(myX + 35, myY + 25, 10, 10);
      }
      
      
       else if (number==3)
      {
        ellipse(myX + 10, myY + 25, 10, 10);
        ellipse(myX + 25, myY + 25, 10, 10);
        ellipse(myX + 40, myY + 25, 10, 10);
      }
      
   
      else if (number==4)
      {
        ellipse(myX + 15, myY + 15, 10, 10);
        ellipse(myX + 35, myY + 35, 10, 10);
        ellipse(myX + 15, myY + 35, 10, 10);
        ellipse(myX + 35, myY + 15, 10, 10);
      }
 
 
      else if (number==5)
      {
        ellipse(myX + 25, myY + 25, 10, 10);
        ellipse(myX + 10, myY + 10, 10, 10);
        ellipse(myX + 40, myY + 40, 10, 10);
        ellipse(myX + 10, myY + 40, 10, 10);
        ellipse(myX + 40, myY + 10, 10, 10);
      }
      
      
      else
      {
        ellipse(myX + 15, myY + 10, 10, 10);
        ellipse(myX + 15, myY + 25, 10, 10);
        ellipse(myX + 15, myY + 40, 10, 10);
        ellipse(myX + 35, myY + 10, 10, 10);
        ellipse(myX + 35, myY + 25, 10, 10);
        ellipse(myX + 35, myY + 40, 10, 10);
      }
      
     
      
  }

}



