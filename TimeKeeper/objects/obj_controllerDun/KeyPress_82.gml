/// @description Insert description here
// You can write your code in this editor
if global.dungeon1Cleared{
	if global.teleTube = 0{
		instance_create_layer(obj_player.x, -1000, "Hitboxes", obj_teletube);
		global.teleTube = 1;
	}
}