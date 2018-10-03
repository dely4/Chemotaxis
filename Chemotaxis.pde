//declare bacteria variables here
ArrayList<Bacteria> colony = new ArrayList<Bacteria>();   
PImage venom;

void setup(){
	venom = loadImage("Venom Logo.png");
	size(1000,1000);
	background(0);
	for(int i = 0; i < 1000; i++){
		Bacteria cell = new Bacteria(250,250);
		colony.add(cell);
	}   
 //initialize bacteria variables here   
}   
void draw(){
	fill(255);
	rect(-1, -1, 1001, 1001);
	image(venom, 0, 0, 1000, 1000);    
	for(int i = 0; i < colony.size(); i++){
		Bacteria temp = colony.get(i);
		temp.show();
		temp.move();
	}
}  
class Bacteria{     
	
	int x_position,y_position;
	Bacteria(int x, int y){
		x_position = x;
		y_position = y;
	}

	void move(){
		if(x_position<mouseX+20){
			x_position+= ((int)(Math.random()*20-((int)(Math.random()*2))));
		}else{
			x_position+= ((int)(Math.random()*-20-((int)(Math.random()*2))));
		}
		if(y_position<mouseY+20){
			y_position+= ((int)(Math.random()*20-((int)(Math.random()*2))));
		}else{
			y_position+= ((int)(Math.random()*-20-((int)(Math.random()*2))));
		}
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