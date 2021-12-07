/// @description Insert description here
// You can write your code in this editor
if !place_meeting(x-movespeed,y,obj_hitbox){
x = x - movespeed;
}else if !place_meeting(x-1, y, obj_hitbox){
	x-=1;
}

//sprite_index = spr_bloggerForward;