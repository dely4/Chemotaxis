//declare bacteria variables here
ArrayList<Bacteria> colony = new ArrayList<Bacteria>();   
PImage venom;
float trans = 0;

void setup(){
	venom = loadImage("Venom Logo.png");
	size(500,500);
	background(0);
	for(int i = 0; i < 1000; i++){
		Bacteria cell = new Bacteria(250,250);
		colony.add(cell);
	}
	fill(255);
    rect(-1,-1,501,501);
 //initialize bacteria variables here   
}   
void draw(){
	for(int i = 0; i < colony.size(); i++){
		Bacteria temp = colony.get(i);
		temp.show();
		temp.move();
	}
		tint(255,trans);
	
	for(int i = 0; i < colony.size(); i++){
		if(colony.get(i).x_position >= 300){
			trans += 0.001;
			tint(255,trans);
		}
	}

	image(venom, 100, 100,300,300);
}  
class Bacteria{     
	
	int x_position,y_position;
	Bacteria(int x, int y){
		x_position = x;
		y_position = y;
	}

	void move(){
		x_position+=((int)(Math.random()*20-10));
		y_position+=((int)(Math.random()*20-10));	
		/*if(x_position<mouseX+20){ //these were from when I wanted the drawing to be based on the mouse
			x_position+= ((int)(Math.random()*20-((int)(Math.random()*2))));
		}else{
			x_position+= ((int)(Math.random()*-20-((int)(Math.random()*2))));
		}
		if(y_position<mouseY+20){
			y_position+= ((int)(Math.random()*20-((int)(Math.random()*2))));
		}else{
			y_position+= ((int)(Math.random()*-20-((int)(Math.random()*2))));
		}*/


	}

	void show(){
		fill(0);
		ellipse(x_position,y_position,1,1);
	}

}    
void mousePressed(){
	Bacteria tail = colony.get(colony.size() -1);
	Bacteria newCell = new Bacteria(tail.x_position,tail.y_position);
	colony.add(newCell);
}