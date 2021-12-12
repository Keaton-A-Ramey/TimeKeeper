/// @description Insert description here
// You can write your code in this editor
if !global.startRound{
	
	if (obj_player.x > 1900){
		global.movey = obj_player.y;
		global.moveFrom = 2;
		room_goto(Room1);
	}
	
	makeBorder = true;
	
	if instance_number(wall1)>0{
		instance_destroy(wall1);
	}
	if instance_number(wall2)>0{
		instance_destroy(wall2);
	}
	if instance_number(wall3)>0{
		instance_destroy(wall3);
	}
}
#region This is where each of the waves is. I'm thinking we use that currentWave thing to predetermine waves. And we can lock waves if not enough dungeons have been cleared. Artifacts variable for that?
if global.startRound{
	spawnCounter++;

	if spawnCounter > 150{
		instance_create_layer(-100, -100, "Hitboxes", obj_TDenemy);
		spawnCounter = 0;
		global.enemyCounter++
	}
	
	//this makes the player not be able to leave room when wave starts
	if makeBorder{
	wall1 = instance_create_layer(1900,400,"Hitboxes",obj_hitbox);
	wall2 = instance_create_layer(1900,500,"Hitboxes",obj_hitbox);
	wall3 = instance_create_layer(1900,600,"Hitboxes",obj_hitbox);
	
	//this is so its not making those hitboxes every frame of the wave
	makeBorder = false;
	}
	
	if global.enemyCounter = 10{
		global.wavesComplete++;
		global.startRound = false;
	}
}
#endregion

if global.buildMode1 = true{
	if global.tower1bought = true{
		cursor_sprite = noone;
		if instance_number(obj_tower1Placer)<1{
		instance_create_layer(mouse_x, mouse_y, "Hitboxes", obj_tower1Placer);
		}
		if global.choosePlot = true{
			global.whichPlotOfDirt.sprite_index=spr_plotOfDirtHighlight;
			if mouse_check_button_pressed(mb_left) = true{
				instance_create_layer(global.whichPlotOfDirt.x, global.whichPlotOfDirt.y, "Hitboxes", obj_tower1);
				instance_destroy(global.whichPlotOfDirt);
				global.tower1bought = false;
			}
		}
	}
}

if global.buildMode2 = true{
	if global.tower2bought = true{
		cursor_sprite = noone;
		if instance_number(obj_tower2Placer)<1{
		instance_create_layer(mouse_x, mouse_y, "Hitboxes", obj_tower2Placer);
		}
		if global.choosePlot = true{
			global.whichPlotOfDirt.sprite_index=spr_plotOfDirtHighlight;
			if mouse_check_button_pressed(mb_left) = true{
				instance_create_layer(global.whichPlotOfDirt.x, global.whichPlotOfDirt.y, "Hitboxes", obj_tower2);
				instance_destroy(global.whichPlotOfDirt);
				global.tower2bought = false;
			}
		}
	}
}

if global.buildMode1 || global.buildMode2{
	if !global.tower1bought && !global.tower2bought{
		
		global.buildMode1 = false;
		global.buildMode2 = false;
		
		if instance_number(obj_tower1Placer)>=1{
				instance_destroy(obj_tower1Placer);
		}
		
		cursor_sprite = spt_cursor;
		obj_plotOfDirt.sprite_index = spr_plotOfDirt;

		if instance_number(obj_tower2Placer)>=1{
		instance_destroy(obj_tower2Placer);
		}
	}
}
