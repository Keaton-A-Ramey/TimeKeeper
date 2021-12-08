/// @description Insert description here
// You can write your code in this editor
if global.gunPickedUp = true{
if global.currentGun = 2{
	if canIShoot >=10{
	var myShot = instance_create_layer(global.spawnx,global.spawny,"Hitboxes",obj_pistolBullet);
	myShot.sprite_index = spt_pistolBullet2
	canIShoot = 0;
	}
}
}