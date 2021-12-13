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

if place_meeting(x,y,obj_tower1Bullet){
	instance_destroy(instance_nearest(x,y,obj_tower1Bullet));
	myHealth-=50;
	image_blend = c_red;
	alarm_set(0,4);
}

sinceHitByCleave++;
if sinceHitByCleave>=200{
if place_meeting(x,y,obj_tower2Bullet){
	myHealth-=150;
	image_blend = c_red;
	alarm_set(0,4);
	sinceHitByCleave = 0;
}
}

if myHealth <= 0{
	instance_create_layer(x,y,"Hitboxes", obj_enemydie);
	audio_play_sound(RobotDie, 10, false);
	if irandom_range(1,5) = 5{
	instance_create_layer(x,y,"Hitboxes", obj_money);
	}
	instance_destroy();
}
