int startX = 150;
int endX = 150;
int startY = 0;
int endY = 0;
void setup(){
  size(300,300);
  strokeWeight(2);
  generateColor();
  background(0);
  noLoop();
  frameRate(60);
}
void draw(){
	raindrop(150, 150);
	generateColor();
	while(startY < 300){
		endY = startY + generateRandom(10, 1);
    	endX = startX + generateRandom(19, -9);
    	line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}
}
void mousePressed(){
	startY = 0;
	endY = 0;
	startX = 150;
	endX = 150;
	generateColor();
	background(0);
	redraw();
}
void generateColor(){
	stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
	fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
}
int generateRandom(int m, int b){
	return (int)(Math.random() * m) + b;
}
void raindrop(int myX, int myY){
	fill(0, 0, 255);
	stroke(0, 0, 255);
	ellipse(myX, myY, 20, 20);
}
