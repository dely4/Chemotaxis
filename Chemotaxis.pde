//declare bacteria variables here
ArrayList<Bacteria> colony = new ArrayList<Bacteria>();   
void setup(){
	size(1000,1000);
	background(255);
	for(int i = 0; i < 10; i++){
		colony<i> = new Bacteria();
	}   
 //initialize bacteria variables here   
}   
void draw(){    
	//move and show the bacteria
  
}  
class Bacteria{     
	
	int x_position,y_position;
	Bacteria(int x, int y){
		x_position = x;
		y_position = y;
	}

	void move(){

	}

	void show(){

	}

}    