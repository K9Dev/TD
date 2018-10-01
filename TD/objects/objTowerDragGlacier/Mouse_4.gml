/// @description 

if(color = c_white){
	instance_destroy();
	instance_create_depth(mouse_x, mouse_y, -1, objTowerGlacier);
	global.coins -= global.clickedTowerCost;
	global.clickedTower = false;
}
