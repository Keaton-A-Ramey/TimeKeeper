/// @description Insert description here
// You can write your code in this editor

whoAmI = irandom_range(1,100)

if whoAmI > 0{
	sprite_index = spr_TDenemy;
	path_start(pth_TD, 2.25+(0.25*global.wavesComplete), path_action_stop, true);
	myHealth = 400;
}
if whoAmI > (75-5*global.artifact){
	sprite_index = spr_TDenemy2;
	path_start(pth_TD, 3.25+(0.25*global.wavesComplete), path_action_stop, true);
	myHealth = 440 + (5*global.artifact);
}
if whoAmI > (95-5*global.artifact){
	sprite_index = spr_TDenemy3;
	path_start(pth_TD, 4.25+(0.25*global.wavesComplete), path_action_stop, true);
	myHealth = 480 + (5*global.artifact);
}

sinceHitByCleave = 400;