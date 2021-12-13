/// @description Insert description here
// You can write your code in this editor
if global.artifact = 1{
	sprite_index = spt_TDboss1;
	path_start(pth_TD, 1.25+(0.25*global.wavesComplete), path_action_stop, true);
	myHealth = 1600;
}

if global.artifact = 2{
	sprite_index = spt_TDboss2;
	path_start(pth_TD, 1.5+(0.25*global.wavesComplete), path_action_stop, true);
	myHealth = 2000;
}

if global.artifact = 3{
	sprite_index = spt_TDboss3;
	path_start(pth_TD, 1.6+(0.25*global.wavesComplete), path_action_stop, true);
	myHealth = 2400;
}

if global.artifact = 4{
	sprite_index = spt_TDboss4;
	path_start(pth_TD, 1.75+(0.25*global.wavesComplete), path_action_stop, true);
	myHealth = 2800;
}

if global.artifact = 5{
	sprite_index = spt_TDboss5;
	path_start(pth_TD, 1.85+(0.25*global.wavesComplete), path_action_stop, true);
	myHealth = 3200;
}

if global.artifact = 6{
	sprite_index = spt_TDboss6;
	path_start(pth_TD, 2+(0.25*global.wavesComplete), path_action_stop, true);
	myHealth = 4000;
}

sinceHitByCleave = 400;