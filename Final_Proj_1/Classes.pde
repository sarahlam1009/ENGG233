class Point{
  float x, y;
  
  Point(float a, float b){
    x = a;
    y = b;
  }
}

class Ball {
  float rad;
  Point center;
  Point contact_point;
  color col;
  
  //more code
  
  Ball (float r, float x, float y, color c){
    rad = r;
    center = new Point (x, y);
    col = c;
  }
  void display(){
    fill(col);
    ellipse(center.x, center.y, rad, rad);
  }
    
}

class Stick {
  Point start_p;
  Point end_p;
  color col;
  int length;

  //More Code
  Stick (Point center, int l, color c_stick){
    length = l;
    start_p = center;
    end_p = new Point (start_p.x + length, start_p.y);
    col = c_stick;
  }
  
  void capture_movement(int x, int y){
    println(x, y);
    float x_calc = x - start_p.x;
    float y_calc = start_p.y - y;
    
  }
  
  void display(){
    fill(col);
    strokeWeight(2);
    rect(start_p.x, start_p.y, length, 5);
  }
  
}

class Table {
  Ball [] b_arr;
  Ball cue_ball;
  Stick st;
  
  Table() {
    cue_ball = new Ball( 35, width/5, (height/2)+15, 255);               //Draws cue ball to the table
    st = new Stick(cue_ball.center, 100, color(200, 0, 0));
  }
  
  void display_backdrop(){
    background(80);
    //Creating the pool table to the screen and the general layout of the background
    fill(100, 26, 26);              //Brown colour        
    rect(50, 100, 600, 350, 18, 18, 18, 18);
    fill(24, 88, 60);               //Green Colour
    rect(75, 125, 550, 300);
    fill(0);                        //Black Colour
    textSize(32);
    text("Game of Billiards", width/3.5, 50); //Title and text for screen
    textSize(18);
    text("Player 1: 0", 30, 50);
    text("Player 2: 0", 575, 50);
    //creates 4 pockets on the billiards table
    arc(75, 125, 80, 80, 0, HALF_PI);  
    rotate( radians (90));
    arc(125, -625, 80, 80, 0, HALF_PI);
    rotate( radians (90));  //180
    arc(-625, -425, 80, 80, 0, HALF_PI);
    rotate( radians(90));
    arc(-425, 75, 80, 80, 0, HALF_PI);
    rotate( radians (90));                      //revert back to 360
    fill(255);                                  //White Colour
    //creates four diamonds on the billiards table
    quad(225, 112.5, 235, 102, 245, 112.5, 235, 123);
    quad(225, 437.5, 235, 427, 245, 437.5, 235, 447);
    quad(470, 112.5, 480, 102, 490, 112.5, 480, 123);
    quad(470, 437.5, 480, 427, 490, 437.5, 480, 447); 
  }
  
  //more code
}