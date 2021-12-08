/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_player){
	global.playerHealth -=20;
	instance_destroy();
}



if place_meeting(x,y,obj_hitbox){
	instance_destroy();
}