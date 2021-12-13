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
	if irandom_range(1,5) = 5{
	instance_create_layer(x,y,"Hitboxes", obj_money);
	audio_play_sound(BossDead, 10, false);
	}
	global.startRound = false;
	global.enemyCounter = 0;
	global.wavesComplete = 1
	if global.artifact = 1{
	instance_create_layer(x,y,"LayerForArtifactToNotHideBehindCoins", obj_artifact1);
	}else if global.artifact = 2{
	instance_create_layer(x,y,"LayerForArtifactToNotHideBehindCoins", obj_artifact2);
	}else if global.artifact = 3{
	instance_create_layer(x,y,"LayerForArtifactToNotHideBehindCoins", obj_artifact3);
	}else if global.artifact = 4{
	instance_create_layer(x,y,"LayerForArtifactToNotHideBehindCoins", obj_artifact4);
	}else if global.artifact = 5{
	instance_create_layer(x,y,"LayerForArtifactToNotHideBehindCoins", obj_artifact5);
	}else if global.artifact = 6{
	instance_create_layer(x,y,"LayerForArtifactToNotHideBehindCoins", obj_artifact6);
	}
	
	global.bossKilled = true;
	if global.artifact<7{
		global.artifact++;
	}
	instance_destroy();
}
