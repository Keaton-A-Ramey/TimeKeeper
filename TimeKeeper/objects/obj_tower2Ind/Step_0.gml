/// @description Insert description here
// You can write your code in this editor

if global.tower2bought = true{
	if global.buildMode2{
		sprite_index = spt_tower2IconHighlight;
	}else{
		sprite_index = spt_tower2Icon;
	}
}else if global.tower2bought = false{
	sprite_index = spt_tower2Silhouette
}