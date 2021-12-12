/// @description Insert description here
// You can write your code in this editor

obj_player.x = 1850;
obj_player.y = global.movey;

global.startRound = false;
global.enemyCounter = 0;
bossSpawnCounter = 0;
global.bossKilled = false;

spawnCounter = 0;

draw_set_font(fnt_manaspace)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
draw_set_color(c_white);

wall1 = noone;
wall2 = noone;
wall3 = noone;

makeBorder = true;

#region remembering towers after left room

#region VARIABLE FOR EACH PLOT

global.Plot1 = instance_nearest(630,700,obj_plotOfDirt);
global.Plot2 = instance_nearest(900,40,obj_plotOfDirt);
global.Plot3 = instance_nearest(1050,700,obj_plotOfDirt);
global.Plot4 = instance_nearest(1240,340,obj_plotOfDirt);

#endregion

#region CHECKING TO SEE IF EACH PLOT NEEDS A TOWER, THEN BUILDING IF IT DOES
if global.plot1Tower > 0{
	if global.plot1Tower = 1{
		instance_create_layer(global.Plot1.x, global.Plot1.y,"Hitboxes", obj_tower1);
		instance_destroy(global.Plot1);
	}else if global.plot1Tower = 2{
		instance_create_layer(global.Plot1.x, global.Plot1.y,"Hitboxes", obj_tower2);
		instance_destroy(global.Plot1);
	}
}

if global.plot2Tower > 0{
	if global.plot2Tower = 1{
		instance_create_layer(global.Plot2.x, global.Plot2.y,"Hitboxes", obj_tower1);
		instance_destroy(global.Plot2);
	}else if global.plot2Tower = 2{
		instance_create_layer(global.Plot2.x, global.Plot2.y,"Hitboxes", obj_tower2);
		instance_destroy(global.Plot2);
	}
}

if global.plot3Tower > 0{
	if global.plot3Tower = 1{
		instance_create_layer(global.Plot3.x, global.Plot3.y,"Hitboxes", obj_tower1);
		instance_destroy(global.Plot3);
	}else if global.plot3Tower = 2{
		instance_create_layer(global.Plot3.x, global.Plot3.y,"Hitboxes", obj_tower2);
		instance_destroy(global.Plot3);
	}
}

if global.plot4Tower > 0{
	if global.plot4Tower = 1{
		instance_create_layer(global.Plot4.x, global.Plot4.y,"Hitboxes", obj_tower1);
		instance_destroy(global.Plot4);
	}else if global.plot4Tower = 2{
		instance_create_layer(global.Plot4.x, global.Plot4.y,"Hitboxes", obj_tower2);
		instance_destroy(global.Plot4);
	}
}
#endregion

#endregion