/// @description Insert description here
// You can write your code in this editor
global.initialPlayerHealth = 200;
global.playerHealth = global.initialPlayerHealth;
global.gun1PickedUp = false;
global.gun2PickedUp = false;
global.gun3PickedUp = false;

draw_set_font(fnt_manaspace)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(1);
draw_set_color(c_white);

global.moveFrom = 0;
global.coins = 0;