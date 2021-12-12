/// @description Insert description here
// You can write your code in this editor
#region ALLOW PLAYER TO LEAVE IF ROUND ISN'T ACTIVE

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

#endregion

#region WAVES (SPAWNIING BEHAVIOR, INVIS WALL, END CONDITIONS
if global.startRound{
	
	#region DEFINING NATURE OF ENEMY SPAWNING
	spawnCounter++;
	
	if global.wavesComplete = 1{
		if spawnCounter > 150{
			instance_create_layer(-100, -100, "Hitboxes", obj_TDenemy);
			spawnCounter = 0;
			global.enemyCounter++
		}
	}
	
	if global.wavesComplete = 2{
		if spawnCounter > 140{
			instance_create_layer(-100, -100, "Hitboxes", obj_TDenemy);
			spawnCounter = 0;
			global.enemyCounter++
		}
	}
	
	if global.wavesComplete = 3{
		if spawnCounter > 120{
			instance_create_layer(-100, -100, "Hitboxes", obj_TDenemy);
			spawnCounter = 0;
			global.enemyCounter++
		}
		if global.enemyCounter>=18{
			if bossSpawnCounter < 1{
				instance_create_layer(-100,-100, "Hitboxes", obj_TDboss);
				bossSpawnCounter++;
			}
		}
	}
	#endregion
	
	#region INVIS WALL DURING WAVE
	//this makes the player not be able to leave room when wave starts
	if makeBorder{
		wall1 = instance_create_layer(1900,400,"Hitboxes",obj_hitbox);
		wall2 = instance_create_layer(1900,500,"Hitboxes",obj_hitbox);
		wall3 = instance_create_layer(1900,600,"Hitboxes",obj_hitbox);
	
		//this is so its not making those hitboxes every frame of the wave
		makeBorder = false;
	}
	#endregion
	
	#region CONDITION FOR ENDING WAVE
	
	if global.wavesComplete = 1{
		if global.enemyCounter = 10{
			global.wavesComplete++;
			global.startRound = false;
			global.enemyCounter = 0;
		}
	}
	
	if global.wavesComplete = 2{
		if global.enemyCounter = 15{
			global.wavesComplete++;
			global.startRound = false;
			global.enemyCounter = 0;
		}
	}
	
	if global.wavesComplete = 3{
		if global.enemyCounter >= 18{
			if global.bossKilled = true{
			global.wavesComplete++;
			global.startRound = false;
			global.enemyCounter = 0;
			global.artifact++;
			}
		}
	}
	
	#endregion
}
#endregion

#region USING BUILD MODE TO BUILD TOWER
if global.buildMode1 = true{
	if global.tower1bought = true{
		cursor_sprite = noone;
		if instance_number(obj_tower1Placer)<1{
		instance_create_layer(mouse_x, mouse_y, "Hitboxes", obj_tower1Placer);
		}
		if global.choosePlot = true{
			global.whichPlotOfDirt.sprite_index=spr_plotOfDirtHighlight;
			if mouse_check_button_pressed(mb_left) = true{
				if global.whichPlotOfDirt = global.Plot1{
					global.plot1Tower = 1;
					instance_create_layer(global.Plot1.x, global.Plot1.y,"Hitboxes", obj_tower1);
					instance_destroy(global.Plot1);
				}else if global.whichPlotOfDirt = global.Plot2{
					global.plot2Tower = 1;
					instance_create_layer(global.Plot2.x, global.Plot2.y,"Hitboxes", obj_tower1);
					instance_destroy(global.Plot2);
				}else if global.whichPlotOfDirt = global.Plot3{
					global.plot3Tower = 1;
					instance_create_layer(global.Plot3.x, global.Plot3.y,"Hitboxes", obj_tower1);
					instance_destroy(global.Plot3);
				}else if global.whichPlotOfDirt = global.Plot4{
					global.plot4Tower = 1;
					instance_create_layer(global.Plot4.x, global.Plot4.y,"Hitboxes", obj_tower1);
					instance_destroy(global.Plot4);
				}
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
				if global.whichPlotOfDirt = global.Plot1{
					global.plot1Tower = 2;
					instance_create_layer(global.Plot1.x, global.Plot1.y,"Hitboxes", obj_tower2);
					instance_destroy(global.Plot1);
				}else if global.whichPlotOfDirt = global.Plot2{
					global.plot2Tower = 2;
					instance_create_layer(global.Plot2.x, global.Plot2.y,"Hitboxes", obj_tower2);
					instance_destroy(global.Plot2);
				}else if global.whichPlotOfDirt = global.Plot3{
					global.plot3Tower = 2;
					instance_create_layer(global.Plot3.x, global.Plot3.y,"Hitboxes", obj_tower2);
					instance_destroy(global.Plot3);
				}else if global.whichPlotOfDirt = global.Plot4{
					global.plot4Tower = 2;
					instance_create_layer(global.Plot4.x, global.Plot4.y,"Hitboxes", obj_tower2);
					instance_destroy(global.Plot4);
				}
				global.tower2bought = false;
			}
		}
	}
}
#endregion

#region END BUILD MODE IF PLAYER CAN'T BUILD ANYTHING

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
#endregion