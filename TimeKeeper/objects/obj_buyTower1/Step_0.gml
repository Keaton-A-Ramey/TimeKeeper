/// @description Insert description here
// You can write your code in this editor

if global.coins >=8{
	if place_meeting(x,y,obj_player){
	global.tower1bought = true
	global.towerRestock = false;
	global.coins-=8;
	audio_play_sound(ShopBuy, 10, false);
	}
}

if global.towerRestock = false{
	instance_destroy();
}