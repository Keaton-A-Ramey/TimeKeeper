/// @description Insert description here
// You can write your code in this editor

if (obj_player.x < 0)
{
	global.movey = obj_player.y;
	global.moveFrom = 1;
	room_goto_previous();
}