/// @description Insert description here
// You can write your code in this editor
randomize();

shootspeed = random_range(30,100);

myHealth = 100;	

whichPath = pth_backAndForth;


path_start(whichPath, irandom_range(2,5), path_action_reverse, false);

shouldIShoot = 0;