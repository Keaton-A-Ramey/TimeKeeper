/// @description Insert description here
// You can write your code in this editor
randomize();

speed = 20 + (5*global.gunUpgrade);


x = obj_player.x + 0;
y = obj_player.y + 20;

image_angle = point_direction(x,y,mouse_x,mouse_y);
direction = point_direction(x,y,mouse_x,mouse_y);