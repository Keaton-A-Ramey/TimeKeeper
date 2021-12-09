/// @description Insert description here
// You can write your code in this editor
if global.gun1PickedUp = true{
if global.currentGun = 1{
	if canIShoot > 20{
	instance_create_layer(global.spawnx,global.spawny,"Hitboxes",obj_pistolBullet);
	canIShoot = 0;
	}
}
}