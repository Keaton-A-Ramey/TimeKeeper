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

makeBorder = true;

global.coinsCollected = 0;

wall1 = noone;
wall2 = noone;
wall3 = noone;

draw_set_font(fnt_manaspace);
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);