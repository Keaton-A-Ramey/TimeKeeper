/// @description Insert description here
// You can write your code in this editor

global.inroom = 6;

if (obj_player.x < 0)
{
	global.movey = obj_player.y;
	global.moveFrom = 7;
	room_goto(dungeon2);
}

if (obj_player.x > 5700)
{
	global.movey = obj_player.y;
	global.moveFrom = 8;
	room_goto(dungeon);
}

if global.artifact > 7
{
	instance_destroy(obj_enemy1)
	instance_destroy(obj_enemy2)
	instance_destroy(obj_enemy3)
	
	if instance_number(wall4)>0{
		instance_destroy(wall4);
	}
	
	if instance_number(wall5)>0{
		instance_destroy(wall5);
	}
	
	if instance_number(wall6)>0{
		instance_destroy(wall6);
		instance_destroy(obj_doorBlockend);
	}
}

if global.dungeon6Cleared = true{
	
	instance_destroy(obj_enemy1)
	instance_destroy(obj_enemy2)
	instance_destroy(obj_enemy3)
	
	if instance_number(wall1)>0{
		instance_destroy(wall1);
	}
	
	if instance_number(wall2)>0{
		instance_destroy(wall2);
	}
	
	if instance_number(wall3)>0{
		instance_destroy(wall3);
		instance_destroy(obj_doorBlock);
	}
}

if !global.dungeon6Cleared{
	if makeBorder{
	wall1 = instance_create_layer(-100,400,"Hitboxes", obj_hitbox);
	wall2 = instance_create_layer(-100,500,"Hitboxes", obj_hitbox);
	wall3 = instance_create_layer(-100,600,"Hitboxes", obj_hitbox);
	instance_create_layer(0,300,"Hitboxes", obj_doorBlock);
	makeBorder = false;
	}
}


if global.playerHealth <= 0{
	global.coins -= global.coinsCollected;
	room_goto(Room1);
}
