/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_player){
	if global.coins>=5{
	global.towerUpgrade++;
	global.coins-=5;
	audio_play_sound(ShopBuy, 10, false);
	instance_destroy();
	global.towerUpRestock=false;
	}
}

if global.towerUpRestock = false{
	instance_destroy();
}