/// @description Insert description here
// You can write your code in this editor

if (obj_player.x < 0)
{
	global.movey = obj_player.y;
	global.moveFrom = 1;
	room_goto_previous();
}

if global.dungeon1Cleared = true{
	
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
	}
}

if !global.dungeon1Cleared{
	if makeBorder{
	wall1 = instance_create_layer(-100,400,"Hitboxes", obj_hitbox);
	wall2 = instance_create_layer(-100,500,"Hitboxes", obj_hitbox);
	wall3 = instance_create_layer(-100,600,"Hitboxes", obj_hitbox);
	makeBorder = false;
	}
}

if global.playerHealth <= 0{
	global.coins -= global.coinsCollected;
	room_goto(Room1);
}
