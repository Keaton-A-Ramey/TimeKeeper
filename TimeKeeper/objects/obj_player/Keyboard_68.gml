//Move Right
if !place_meeting(x+movespeed,y,obj_hitbox){
x = x + movespeed;
}else if !place_meeting(x+1, y, obj_hitbox){
	x+=1;
}


