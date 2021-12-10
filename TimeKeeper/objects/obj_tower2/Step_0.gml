/// @description Insert description here
// You can write your code in this editor
canIShoot++;

if instance_number(obj_TDenemy)>0{
	
var nearestEnemy = instance_nearest(x,y, obj_TDenemy);

if canIShoot >= 120{
	var myShot = instance_create_layer(x+100, y+59, "Hitboxes", obj_tower2Bullet);
	myShot.direction = point_direction(x,y,nearestEnemy.x, nearestEnemy.y);
	myShot.image_angle = direction;
	myShot.speed = 4;
	canIShoot = 0;
	}
}