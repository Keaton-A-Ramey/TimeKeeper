/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_player){
	//Make it so the player cant collide again...
	mask_index = spt_money;
	//Set gotBattery to true...
	getCoin = 1;
	//Give the coin speed...
	speed = 15;
	//and send it up!
	direction = 90;
	global.coins = global.coins + 1;
	
}



//when the coin goes completely off screen...
if (y <= -100){
	//destroy it
	instance_destroy();
}