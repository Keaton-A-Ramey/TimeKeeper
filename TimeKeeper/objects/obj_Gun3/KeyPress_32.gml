/// @description Insert description here
// You can write your code in this editor

if global.gun3PickedUp = true{
if global.currentGun = 3{
	if canIShoot >=40{
	instance_create_layer(global.spawnx,global.spawny,"Hitboxes",obj_shotgunBullet);
	instance_create_layer(global.spawnx,global.spawny,"Hitboxes",obj_shotgunBullet);
	instance_create_layer(global.spawnx,global.spawny,"Hitboxes",obj_shotgunBullet);
	instance_create_layer(global.spawnx,global.spawny,"Hitboxes",obj_shotgunBullet);
	instance_create_layer(global.spawnx,global.spawny,"Hitboxes",obj_shotgunBullet);
	instance_create_layer(global.spawnx,global.spawny,"Hitboxes",obj_shotgunBullet);
	instance_create_layer(global.spawnx,global.spawny,"Hitboxes",obj_shotgunBullet);
	instance_create_layer(global.spawnx,global.spawny,"Hitboxes",obj_shotgunBullet);
	instance_create_layer(global.spawnx,global.spawny,"Hitboxes",obj_shotgunBullet);
	audio_play_sound(ShotgunShoot, 10, false);
	canIShoot = 0;
	}
}
}