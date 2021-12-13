/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_laser){
	image_blend = c_red;
	alarm_set(0,4);
	audio_play_sound(man_getting_hit, 10, false);
}
