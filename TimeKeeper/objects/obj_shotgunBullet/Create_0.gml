/// @description Insert description here
// You can write your code in this editor
randomize();

speed= 20;

x = obj_player.x + 0;
y = obj_player.y + 20;

if irandom_range(0,1) = 0{
direction = point_direction(x,y,mouse_x,mouse_y) + irandom_range(0,13);
}else{
direction = point_direction(x,y,mouse_x,mouse_y) - irandom_range(0,13);
}

image_angle = direction;