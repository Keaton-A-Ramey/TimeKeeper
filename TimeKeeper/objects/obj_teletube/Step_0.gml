/// @description Insert description here
// You can write your code in this editor

 

 
 if place_meeting(x,y,obj_player){
	down = 1
 }
  
 if y > backupy	
 {
	down = 2
 }
 
  if down = 0
 {
	y = y + 5 
 }
 
 if down = 1
 {
	y = y -5
	obj_player.y = y+ 900;
	obj_player.x = x;
	
 }
 
  if down = 2
 {
	y = y -5
 }


 if y < -1000
 {
	 if down = 1
	 {
		 room_goto(Room1);
	 }
	 
	 if down = 2
	 {
	 global.teleTube = 0;
	 instance_destroy();
	 }
 }