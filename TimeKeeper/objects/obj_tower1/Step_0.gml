/// @description Insert description here
// You can write your code in this editor
canIShoot+=(1 + 0.25*global.towerUpgrade);

if instance_number(obj_TDenemy) + instance_number(obj_TDboss) > 0{
	
if instance_number(obj_TDenemy)>0{
	var nearestEnemy = instance_nearest(x,y, obj_TDenemy);
	if instance_number(obj_TDboss) > 0{
		var nearestBoss = instance_nearest(x,y,obj_TDboss);
		if point_distance(x, y, nearestEnemy.x, nearestEnemy.y) > point_distance(x, y, nearestBoss.x, nearestBoss.y){
			nearestEnemy = nearestBoss;
		}
	}
}else{
	var nearestEnemy = instance_nearest(x,y, obj_TDboss);
}

if canIShoot >= 30{
	var myShot = instance_create_layer(x+100, y+59, "Hitboxes", obj_tower1Bullet);
	myShot.direction = point_direction(x,y,nearestEnemy.x, nearestEnemy.y);
	myShot.image_angle = direction;
	myShot.speed = 10;
	canIShoot = 0;
	}
}