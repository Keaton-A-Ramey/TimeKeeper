/// @description Insert description here
// You can write your code in this edito
artifact = 0

movespeed = 7;

if instance_number(obj_healthBar)<1{
	instance_create_layer(x, y, "Instances", obj_healthBar);
}

global.currentGun = 2;