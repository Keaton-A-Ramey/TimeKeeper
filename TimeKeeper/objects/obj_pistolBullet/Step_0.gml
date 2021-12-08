/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_hitbox){
	instance_destroy();
}

if global.currentGun = 1{
var sparkle = instance_create_layer(x,y, "Instances", obj_sparkle);
sparkle.direction = direction + irandom_range(160,200);
sparkle.speed = random_range(3,5);

var sparkle2 = instance_create_layer(x,y,"Instances", obj_sparkle2);
sparkle2.direction = direction + irandom_range(170,190);
sparkle2.speed = random_range(4,6);
}

if global.currentGun = 2{
	if irandom_range(1,2) = 2{
	var sparkle3 = instance_create_layer(x,y,"Instances", obj_sparkle3);
	sparkle3.direction = direction + irandom_range(175,185);
	sparkle3.speed = random_range(5,7);
	}
}