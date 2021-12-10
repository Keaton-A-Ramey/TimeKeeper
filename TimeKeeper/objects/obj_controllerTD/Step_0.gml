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