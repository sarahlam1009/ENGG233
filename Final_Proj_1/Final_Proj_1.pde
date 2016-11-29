//Final_Proj_1
//Sarah Lam



void setup(){
  size(750, 500);         //sets the size of the screen, number of pixels 
  table = new Table();
  
}

String game_state = "game_check";
boolean mouse_click = false;

color p1_color = color(200, 0, 0);  
color p2_color = color(0, 0, 200);

Table table;
Ball cue_ball;

void draw() {
  table.display();
  table.cue_ball.display();
                                                                     //Player 1 cue stick code
  Stick p1_stick = new Stick (mouseX, mouseY, 100, p1_color);
  Draw_Stick(p1_stick);
  
  Stick p2_stick = new Stick (mouseX, mouseY, 100, p2_color);        //Player 2 cue stick
}