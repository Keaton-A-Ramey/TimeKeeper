/// @description Insert description here
// You can write your code in this editor
if room = Room1{
	if global.artifact-1>=5{
		sprite_index = spt_artifact5;
	}else{
		sprite_index = spt_artifact5Silhouette;
	}
}

if room = TDroom{
	sprite_index = spt_artifact5;
	
	if place_meeting(x,y,obj_player){
		instance_destroy();
		room_goto(Room1);
	}
}