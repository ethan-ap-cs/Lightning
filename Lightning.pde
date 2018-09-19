int startX = 0;
int endX = 0;
int startY = 150;
int endY = 150;
void setup(){
  size(300,300);
  
  strokeWeight(2);
  background(0);
  noLoop();
}
void draw(){
	while(startX < 300){
		generateColor();
	}
}
void mousePressed(){
	redraw();
}
void generateColor(){
	fill((int)(Math.random()*10), (int)(Math.random()*10), (int)(Math.random()*10));
}
int generateRandom(){
	return (int)(Math.random()*10);
}

