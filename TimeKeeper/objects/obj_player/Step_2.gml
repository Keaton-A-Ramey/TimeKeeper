/// @description Insert description here
// You can write your code in this editor

if artifact = 0
	{
	roomgoto = 5700 - 1200;
	}

if artifact = 1
	{
	roomgoto = 11400 - 1200;
	}

#region MOVE THE VIEW 

if x > 700
{
	if x < roomgoto
	{
	camera_set_view_pos(view_camera[0], x - 700, 0);
	}
}

show_debug_message(camera_get_view_width(view_camera[0]));

#endregion