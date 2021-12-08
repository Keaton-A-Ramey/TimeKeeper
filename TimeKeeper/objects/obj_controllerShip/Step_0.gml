/// @description Insert description here
// You can write your code in this editor

if (obj_player.x > 1900)
{
	global.movey = obj_player.y;
	global.moveFrom = 0;
	room_goto_next();
}

if (obj_player.x < 0)
{
	global.movey = obj_player.y;
	global.moveFrom = 0;
	room_goto(TDroom);
}