/// @description Insert description here
// You can write your code in this editor
if !place_meeting(x,y-movespeed,obj_hitbox){
y-=movespeed;
}else if !place_meeting(x, y-1, obj_hitbox){
	y-=1;
}
