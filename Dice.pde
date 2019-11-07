Die [] rob;
void setup()
{
	size(535,535);
	rob = new Die[16];
	int j = 0;
	for (int i=10; i<530; i= i + 130 ){
    	for(int p=10; p<530; p=p+130){
     		rob[j] = new Die(p,i);
     		j++;
   		}
	}
	noLoop();
}
void draw()
{
	background(255, 204, 0);
	int value=0;
	for (int c= 0; c<rob.length; c++){
		rob[c].roll();
		rob[c].show();
		value=value+rob[c].n;
	}
	textSize(22);
	text(value,240,260);
	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX,myY, n;
	Die(int x, int y) //constructor
	{
		myX= x;
		myY= y;//variable initializations here
	}
	void roll()
	{
	 n = (int)(Math.random()*6)+1;
	 //your code here
	}
	void show()
	{
		fill(255);
		rect(myX,myY,100,100);
		fill(0);
		if(n==1){
         ellipse(myX+50,myY+50,15,15);
		
		} else if(n==2){
		ellipse (myX+20,myY+20,15,15);
		ellipse(myX+80,myY+80,15,15);
		
		}else if(n==3){
		 ellipse (myX+20,myY+20,15,15);
		 ellipse(myX+50,myY+50,15,15);
		 ellipse(myX+80,myY+80,15,15);
		
		}else if (n==4){
		ellipse (myX+20,myY+20,15,15);
		ellipse(myX+80,myY+80,15,15);
		ellipse(myX+20,myY+80,15,15);
		ellipse(myX+80,myY+20,15,15);
		}else if (n==5){
		ellipse(myX+20,myY+20,15,15);
		ellipse(myX+80,myY+80,15,15);
		ellipse(myX+20,myY+80,15,15);
		ellipse(myX+80,myY+20,15,15);
		ellipse(myX+50,myY+50,15,15);
		
		}else{
	    ellipse(myX+20,myY+20,15,15);
		ellipse(myX+80,myY+80,15,15);
		ellipse(myX+20,myY+80,15,15);
		ellipse(myX+80,myY+20,15,15);
		
		ellipse(myX+20,myY+50,15,15);
		ellipse(myX+80,myY+50,15,15);
		}

		
	}
}
