/// @description Insert description here
// You can write your code in this editor

if global.buildMode1 || global.buildMode2{
	draw_text_ext_transformed(0,50,"Build Mode is ON", 10, 1000, 2, 2, 0);
}

draw_text_ext_transformed(0,0,"WAVE: " + string(global.wavesComplete), 10, 500, 2.5,2.5,0);