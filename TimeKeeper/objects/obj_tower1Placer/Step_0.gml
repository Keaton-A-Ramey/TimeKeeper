/// @description Insert description here
// You can write your code in this editor

x = mouse_x;
y = mouse_y;

if place_meeting(x, y, obj_plotOfDirt){
	global.choosePlot = true;
	global.whichPlotOfDirt = instance_nearest(x,y,obj_plotOfDirt);
}else{
	global.choosePlot = false;
}

if global.choosePlot = false{
	global.whichPlotOfDirt = noone;
}