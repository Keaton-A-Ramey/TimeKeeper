/// @description Insert description here
// You can write your code in this editor

obj_player.x = 1850;
obj_player.y = global.movey;

global.startRound = false;
global.enemyCounter = 0;

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