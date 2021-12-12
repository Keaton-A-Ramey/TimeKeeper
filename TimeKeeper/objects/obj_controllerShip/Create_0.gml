/// @description Insert description here
// You can write your code in this editor

if global.moveFrom = 1
{
obj_player.x = 1850;
obj_player.y = global.movey;
}

global.playerHealth = global.initialPlayerHealth;

if global.moveFrom = 2
{
obj_player.x = 50;
obj_player.y = global.movey;
}

draw_set_font(fnt_manaspace);
draw_set_alpha(1);
draw_set_font(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);