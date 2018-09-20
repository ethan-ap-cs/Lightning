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
  generateColor();
	while(startX < 300){
		endX = startX + generateRandom(10, 0);
    endY = startY + generateRandom(19, -9);
    line(startX,startY,endX,endY);
	}
}
void mousePressed(){
	redraw();
}
void generateColor(){
	fill((int)(Math.random()*10), (int)(Math.random()*10), (int)(Math.random()*10));
}
int generateRandom(int m, int b){
	return (int)(Math.random() * m) + b;
}
