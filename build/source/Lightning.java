import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {

int startX = 0;
int endX = 0;
int startY = 150;
int endY = 150;
public void setup(){
  

  strokeWeight(2);
  background(0);
  noLoop();
}
public void draw(){
  generateColor();
	while(startX < 300){
		endX = startX + generateRandom(10, 0);
    endY = startY + generateRandom(19, -9);
    line(startX,startY,endX,endY);
	}
}
public void mousePressed(){
	redraw();
}
public void generateColor(){
	fill((int)(Math.random()*10), (int)(Math.random()*10), (int)(Math.random()*10));
}
public int generateRandom(int m, int b){
	return (int)(Math.random() * m) + b;
}
  public void settings() {  size(300,300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
