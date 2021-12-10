/// @description Insert description here
// You can write your code in this editor

if (obj_player.x > 1900)
{
	global.movey = obj_player.y;
	global.moveFrom = 2;
	room_goto(Room1);
}

spawnCounter++;

if spawnCounter > 150{
	instance_create_layer(-100, -100, "Hitboxes", obj_TDenemy);
	spawnCounter = 0;
}	

if global.buildMode = true{
	if global.tower1bought = true{
		cursor_sprite = spt_tower1Icon;
		if place_meeting(mouse_x,mouse_y, obj_plotOfDirt){
			var thePlot = instance_nearest(mouse_x, mouse_y, obj_plotOfDirt);
			thePlot.sprite_index=spr_plotOfDirtHighlight;
			if mouse_check_button_pressed(mb_left) = true{
				instance_create_layer(thePlot.x, thePlot.y, "Hitboxes", obj_tower1);
				instance_destroy(thePlot);
				global.tower1bought = false;
			}
		}
	}
}