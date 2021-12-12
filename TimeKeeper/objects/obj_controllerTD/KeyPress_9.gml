/// @description Insert description here
// You can write your code in this editor
global.buildMode1 = false;
global.buildMode2 = false;
global.choosePlot = false;

cursor_sprite = spt_cursor;
obj_plotOfDirt.sprite_index = spr_plotOfDirt;

if instance_number(obj_tower1Placer)>=1{
		instance_destroy(obj_tower1Placer);
}

if instance_number(obj_tower2Placer)>=1{
		instance_destroy(obj_tower2Placer);
}