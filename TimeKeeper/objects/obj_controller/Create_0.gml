/// @description Insert description here
// You can write your code in this editor

obj_hitbox.image_alpha = 0;

window_set_fullscreen(true);

show_debug_message(global.artifact);

//Stops all the music
audio_stop_all();

//Reads room and plays appropriate track
if room = Room1{
	audio_play_sound(InShipMusic, 10, true);
} else if room = TDroom{
	audio_play_sound(TDmusic, 10, true);
} else if room = dungeon{
	audio_play_sound(DungeonMusic, 10, true);
}
else if room = dungeon2{
	audio_play_sound(DungeonMusic, 10, true);
}
else if room = dungeon3{
	audio_play_sound(DungeonMusic, 10, true);
}
else if room = dungeon4{
	audio_play_sound(DungeonMusic, 10, true);
}
else if room = dungeon5{
	audio_play_sound(DungeonMusic, 10, true);
}
else if room = dungeon6{
	audio_play_sound(DungeonMusic, 10, true);
}
else if room = finalroom{
	audio_play_sound(InShipMusic, 10, true);
}
else if room = introRoom{
	audio_play_sound(InShipMusic, 10, true);
}