/// @description Insert description here
// You can write your code in this editor

	roomgoto = 5700 - 1200;

#region MOVE THE VIEW 

if x > 700
{
	if x < roomgoto
	{
	camera_set_view_pos(view_camera[0], x - 700, 0);
	}
}

#endregion 