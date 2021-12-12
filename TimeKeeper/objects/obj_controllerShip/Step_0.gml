/// @description Insert description here
// You can write your code in this editor
if global.gun1PickedUp = false{
	if instance_number(obj_Gun1) = 0{
		instance_create_layer(382, 150,"Instances", obj_Gun1);
	}
}

if global.gun2PickedUp = false{
	if instance_number(obj_Gun2) = 0{
		instance_create_layer(582, 150, "Instances", obj_Gun2);
	}
}

if global.gun3PickedUp = false{
	if instance_number(obj_Gun3) = 0{
		instance_create_layer(782, 150, "instances", obj_Gun3);
	}
}

if (obj_player.x > 1900)
{
	global.movey = obj_player.y;
	global.moveFrom = 0;
	room_goto_next();
}

if (obj_player.x < 0)
{
	global.movey = obj_player.y;
	global.moveFrom = 0;
	room_goto(TDroom);
}