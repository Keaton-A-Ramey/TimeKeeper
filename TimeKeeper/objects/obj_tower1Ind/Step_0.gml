/// @description Insert description here
// You can write your code in this editor

if global.tower1bought = true{
	if global.buildMode1{
		sprite_index = spt_tower1IconHighlight;
	}else{
		sprite_index = spt_tower1Icon;
	}
}else if global.tower1bought = false{
	sprite_index = spt_tower1Silhouette;
}