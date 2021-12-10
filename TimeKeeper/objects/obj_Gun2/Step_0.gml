/// @description Insert description here
// You can write your code in this editor

canIShoot++;
canIShoot+=(0.25*global.gunUpgrade)

global.spawnx = obj_player.x;
global.spawny = obj_player.y;

if place_meeting(x,y,obj_player){
	if global.gun1PickedUp = true{
		instance_destroy(obj_Gun1);
	}
	global.gun1PickedUp = false
	global.gun2PickedUp = true;
	if global.gun3PickedUp = true{
		instance_destroy(obj_Gun3)
	}
	global.gun3PickedUp = false;
	global.currentGun = 2;
}

if global.gun2PickedUp = true{
x = obj_player.x + 0;
y = obj_player.y + 20;

dir = point_direction(x,y,mouse_x,mouse_y);
image_angle = lerp(image_angle, dir, 1);

if (dir > 90)
{
	image_yscale = -1;
}

if (dir > 270)
{
	image_yscale = 1;
}

if (dir < 90)
{
	image_yscale = 1;
}
}
