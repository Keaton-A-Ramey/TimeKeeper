/// @description Insert description here
// You can write your code in this editor

global.teleTube = 0;

obj_player.x = 50;
obj_player.y = global.movey;

if global.gun1PickedUp = true{
	instance_create_layer(obj_player.x,obj_player.y,"Instances",obj_Gun1);
}else if global.gun2PickedUp = true{
	instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_Gun2);
}else if global.gun3PickedUp = true{
	instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_Gun3);
}