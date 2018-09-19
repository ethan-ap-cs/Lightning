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
	//while(x < 300){}
}
void mousePressed(){
	redraw();
}
void generateColor(){
	fill((int)(Math.random()*10), (int)(Math.random()*10), (int)(Math.random()*10));
}

