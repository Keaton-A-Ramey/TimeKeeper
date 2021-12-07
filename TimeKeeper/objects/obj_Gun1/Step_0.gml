/// @description Insert description here
// You can write your code in this editor

global.spawnx = obj_player.x;
global.spawny = obj_player.y;

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

