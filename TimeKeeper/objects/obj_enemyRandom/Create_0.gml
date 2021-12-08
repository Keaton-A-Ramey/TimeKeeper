/// @description Insert description here
// You can write your code in this editor
randomize();

myHealth = 100;	

whichPath=irandom_range(1,3)
if whichPath = 1{
	whichPath = pth_backAndForth
}else if whichPath = 2{
	whichPath = pth_Hourglass
}else{
	whichPath = pth_raindrop
}

path_start(whichPath, 3, path_action_reverse, false);

shouldIShoot = 0;