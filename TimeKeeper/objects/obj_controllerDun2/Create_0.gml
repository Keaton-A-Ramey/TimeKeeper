/// @description Insert description here
// You can write your code in this editor

global.teleTube = 0;

if global.moveFrom = 2
{
obj_player.x = 50;
}

if global.moveFrom = 3
{
obj_player.x = 5650;
}

obj_player.y = global.movey;

if global.gun1PickedUp = true{
	instance_create_layer(obj_player.x,obj_player.y,"Hitboxes",obj_Gun1);
}else if global.gun2PickedUp = true{
	instance_create_layer(obj_player.x, obj_player.y, "Hitboxes", obj_Gun2);
}else if global.gun3PickedUp = true{
	instance_create_layer(obj_player.x, obj_player.y, "Hitboxes", obj_Gun3);
}

makeBorder = true;
makeBorder2 = true;

global.coinsCollected = 0;

wall1 = noone;
wall2 = noone;
wall3 = noone;

if global.artifact > 0{
	if makeBorder2{
	wall4 = instance_create_layer(5700,400,"Hitboxes", obj_hitbox);
	wall5 = instance_create_layer(5700,500,"Hitboxes", obj_hitbox);
	wall6 = instance_create_layer(5700,600,"Hitboxes", obj_hitbox);
	instance_create_layer(5700,300,"Hitboxes", obj_doorBlockend);
	makeBorder2 = false;
	}
}



draw_set_font(fnt_manaspace);
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);