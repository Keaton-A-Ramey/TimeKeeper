/// @description Insert description here
// You can write your code in this editor

if place_meeting(x, y, obj_pistolBullet){
	instance_destroy(instance_nearest(x,y,obj_pistolBullet));
	myHealth-=30
}

if myHealth <= 0{
	instance_destroy();
}

