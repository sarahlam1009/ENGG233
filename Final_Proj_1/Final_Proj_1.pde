//Final_Proj_1
//Sarah Lam

void setup(){
  size(750, 500);         //sets the size of the screen, number of pixels 
  table = new Table();
  
}

String game_state = "player_input";
boolean mouse_click = false;

Table table;
Ball cue_ball;

void draw() {
  
  //logic
  
   switch (game_state) {
    case "player_input":
        table.st.capture_movement(mouseX, mouseY);
      
      break;
    case "input_power":
    
      break;
    case "physics":
     
     
      break;
   }
  
  //draw
  
  table.display_backdrop();
  table.cue_ball.display();
  table.st.display();
                                                                     //Player 1 cue stick code
 // Stick p1_stick = new Stick (mouseX, mouseY, 100, p1_color);
 // Draw_Stick(p1_stick);
}