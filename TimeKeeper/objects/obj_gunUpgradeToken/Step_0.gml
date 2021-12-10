/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_player){
	if global.coins>=5{
	global.gunUpgrade++;
	global.coins-=5;
	instance_destroy();
	global.gunUpRestock=false;
	}
}

if global.gunUpRestock = false{
	instance_destroy();
}