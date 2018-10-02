//declare bacteria variables here
ArrayList<Bacteria> colony = new ArrayList<Bacteria>();   
void setup(){
	size(1000,1000);
	background(255);
	for(int i = 0; i < 100; i++){
		Bacteria cell = new Bacteria(250,250);
		colony.add(cell);
	}   
 //initialize bacteria variables here   
}   
void draw(){
	background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));    
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
		x_position+=((int)(((mouseX - x_position)*Math.random())));
		y_position+=((int)(((mouseY - y_position)*Math.random())));
	}

	void show(){
		ellipse(x_position,y_position,10,10);
	}

}    
void mousePressed(){
	Bacteria tail = colony.get(colony.size() -1);
	Bacteria newCell = new Bacteria(tail.x_position,tail.y_position);
	colony.add(newCell);
}