/// @description Insert description here
// You can write your code in this editor

if place_meeting(x, y, obj_pistolBullet){
	instance_destroy(instance_nearest(x,y,obj_pistolBullet));
	if global.currentGun = 1{
	myHealth-=34
	}else if global.currentGun = 2{
	myHealth -=11;
	}
	image_blend = c_red;
	alarm_set(0,4);
}

if place_meeting(x,y,obj_shotgunBullet){
	instance_destroy(instance_nearest(x,y,obj_shotgunBullet));
	myHealth-=12;
	image_blend = c_red;
	alarm_set(0,4);
}

if myHealth <= 0{
	instance_create_layer(x,y,"Hitboxes", obj_enemydie);
	instance_destroy();
}

shouldIShoot++

if shouldIShoot >= 90{
	var myShot = instance_create_layer(x, y, "Hitboxes", obj_laser);
	myShot.direction = 0;
	if x != obj_player.x{
		if y != obj_player.y{
	myShot.image_angle = point_direction(x,y,obj_player.x, obj_player.y);
	myShot.direction = point_direction(x,y,obj_player.x, obj_player.y);
		}
	}
	myShot.speed = 9;
	shouldIShoot = 0;
}