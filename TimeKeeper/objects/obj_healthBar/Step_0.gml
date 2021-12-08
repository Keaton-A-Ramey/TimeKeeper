/// @description Insert description here
// You can write your code in this editor
x = obj_player.x
y = obj_player.y + obj_player.sprite_height/1.5

howMuchHealth = global.playerHealth/global.initialPlayerHealth;

image_xscale = howMuchHealth;

if howMuchHealth>0.5{
	image_blend = c_green;
}else if howMuchHealth>0.25{
	image_blend = c_orange;
}else if howMuchHealth>0{
	image_blend = c_red;
}

