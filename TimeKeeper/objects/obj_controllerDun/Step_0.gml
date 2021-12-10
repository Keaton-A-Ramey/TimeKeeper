/// @description Insert description here
// You can write your code in this editor

if (obj_player.x < 0)
{
	global.movey = obj_player.y;
	global.moveFrom = 1;
	room_goto_previous();
}

if global.dungeon1Cleared = true{
	instance_destroy(obj_enemy1)
	instance_destroy(obj_enemy2)
	instance_destroy(obj_enemy3)
}