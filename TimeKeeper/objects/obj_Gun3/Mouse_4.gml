/// @description Insert description here
// You can write your code in this editor
if canIShoot > 20{
instance_create_layer(global.spawnx,global.spawny,"Hitboxes",obj_pistolBullet);
canIShoot = 0;
}